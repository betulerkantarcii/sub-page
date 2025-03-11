<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Newsandevent\BulkDestroyNewsandevent;
use App\Http\Requests\Admin\Newsandevent\DestroyNewsandevent;
use App\Http\Requests\Admin\Newsandevent\IndexNewsandevent;
use App\Http\Requests\Admin\Newsandevent\StoreNewsandevent;
use App\Http\Requests\Admin\Newsandevent\UpdateNewsandevent;
use App\Models\Newsandevent;
use Brackets\AdminListing\Facades\AdminListing;
use Exception;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Response;
use Illuminate\Routing\Redirector;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class NewsandeventsController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @param IndexNewsandevent $request
     * @return array|Factory|View
     */
    public function index(IndexNewsandevent $request)
    {
        // create and AdminListing instance for a specific model and
        $data = AdminListing::create(Newsandevent::class)->processRequestAndGet(
            // pass the request with params
            $request,

            // set columns to query
            ['id', 'heading', 'info', 'link', 'published', 'enabled'],

            // set columns to searchIn
            ['id', 'heading', 'info', 'link']
        );

        if ($request->ajax()) {
            if ($request->has('bulk')) {
                return [
                    'bulkItems' => $data->pluck('id')
                ];
            }
            return ['data' => $data];
        }

        return view('admin.newsandevent.index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function create()
    {
        $this->authorize('admin.newsandevent.create');

        return view('admin.newsandevent.create',[
            'mode' => 'create'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreNewsandevent $request
     * @return array|RedirectResponse|Redirector
     */
    public function store(StoreNewsandevent $request)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Store the Newsandevent
        $newsandevent = Newsandevent::create($sanitized);

        if ($request->ajax()) {
            return ['redirect' => url('admin/newsandevents'), 'message' => trans('brackets/admin-ui::admin.operation.succeeded')];
        }

        return redirect('admin/newsandevents');
    }

    /**
     * Display the specified resource.
     *
     * @param Newsandevent $newsandevent
     * @throws AuthorizationException
     * @return void
     */
    public function show(Newsandevent $newsandevent)
    {
        $this->authorize('admin.newsandevent.show', $newsandevent);

        // TODO your code goes here
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Newsandevent $newsandevent
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function edit(Newsandevent $newsandevent)
    {
        $this->authorize('admin.newsandevent.edit', $newsandevent);


        return view('admin.newsandevent.edit', [
            'newsandevent' => $newsandevent,
            'mode' => 'edit',
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param UpdateNewsandevent $request
     * @param Newsandevent $newsandevent
     * @return array|RedirectResponse|Redirector
     */
    public function update(UpdateNewsandevent $request, Newsandevent $newsandevent)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Update changed values Newsandevent
        $newsandevent->update($sanitized);

        if ($request->ajax()) {
            return [
                'redirect' => url('admin/newsandevents'),
                'message' => trans('brackets/admin-ui::admin.operation.succeeded'),
            ];
        }

        return redirect('admin/newsandevents');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param DestroyNewsandevent $request
     * @param Newsandevent $newsandevent
     * @throws Exception
     * @return ResponseFactory|RedirectResponse|Response
     */
    public function destroy(DestroyNewsandevent $request, Newsandevent $newsandevent)
    {
        $newsandevent->delete();

        if ($request->ajax()) {
            return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
        }

        return redirect()->back();
    }

    /**
     * Remove the specified resources from storage.
     *
     * @param BulkDestroyNewsandevent $request
     * @throws Exception
     * @return Response|bool
     */
    public function bulkDestroy(BulkDestroyNewsandevent $request) : Response
    {
        DB::transaction(static function () use ($request) {
            collect($request->data['ids'])
                ->chunk(1000)
                ->each(static function ($bulkChunk) {
                    Newsandevent::whereIn('id', $bulkChunk)->delete();

                    // TODO your code goes here
                });
        });

        return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
    }
}
