<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Videolink\BulkDestroyVideolink;
use App\Http\Requests\Admin\Videolink\DestroyVideolink;
use App\Http\Requests\Admin\Videolink\IndexVideolink;
use App\Http\Requests\Admin\Videolink\StoreVideolink;
use App\Http\Requests\Admin\Videolink\UpdateVideolink;
use App\Models\Videolink;
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

class VideolinkController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @param IndexVideolink $request
     * @return array|Factory|View
     */
    public function index(IndexVideolink $request)
    {
        // create and AdminListing instance for a specific model and
        $data = AdminListing::create(Videolink::class)->processRequestAndGet(
            // pass the request with params
            $request,

            // set columns to query
            ['id', 'link'],

            // set columns to searchIn
            ['id', 'link']
        );

        if ($request->ajax()) {
            if ($request->has('bulk')) {
                return [
                    'bulkItems' => $data->pluck('id')
                ];
            }
            return ['data' => $data];
        }

        return view('admin.videolink.index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function create()
    {
        $this->authorize('admin.videolink.create');

        return view('admin.videolink.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreVideolink $request
     * @return array|RedirectResponse|Redirector
     */
    public function store(StoreVideolink $request)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Store the Videolink
        $videolink = Videolink::create($sanitized);

        if ($request->ajax()) {
            return ['redirect' => url('admin/videolinks'), 'message' => trans('brackets/admin-ui::admin.operation.succeeded')];
        }

        return redirect('admin/videolinks');
    }

    /**
     * Display the specified resource.
     *
     * @param Videolink $videolink
     * @throws AuthorizationException
     * @return void
     */
    public function show(Videolink $videolink)
    {
        $this->authorize('admin.videolink.show', $videolink);

        // TODO your code goes here
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Videolink $videolink
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function edit(Videolink $videolink)
    {
        $this->authorize('admin.videolink.edit', $videolink);


        return view('admin.videolink.edit', [
            'videolink' => $videolink,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param UpdateVideolink $request
     * @param Videolink $videolink
     * @return array|RedirectResponse|Redirector
     */
    public function update(UpdateVideolink $request, Videolink $videolink)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Update changed values Videolink
        $videolink->update($sanitized);

        if ($request->ajax()) {
            return [
                'redirect' => url('admin/videolinks'),
                'message' => trans('brackets/admin-ui::admin.operation.succeeded'),
            ];
        }

        return redirect('admin/videolinks');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param DestroyVideolink $request
     * @param Videolink $videolink
     * @throws Exception
     * @return ResponseFactory|RedirectResponse|Response
     */
    public function destroy(DestroyVideolink $request, Videolink $videolink)
    {
        $videolink->delete();

        if ($request->ajax()) {
            return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
        }

        return redirect()->back();
    }

    /**
     * Remove the specified resources from storage.
     *
     * @param BulkDestroyVideolink $request
     * @throws Exception
     * @return Response|bool
     */
    public function bulkDestroy(BulkDestroyVideolink $request) : Response
    {
        DB::transaction(static function () use ($request) {
            collect($request->data['ids'])
                ->chunk(1000)
                ->each(static function ($bulkChunk) {
                    Videolink::whereIn('id', $bulkChunk)->delete();

                    // TODO your code goes here
                });
        });

        return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
    }
}
