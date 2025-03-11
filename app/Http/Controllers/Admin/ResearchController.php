<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Research\BulkDestroyResearch;
use App\Http\Requests\Admin\Research\DestroyResearch;
use App\Http\Requests\Admin\Research\IndexResearch;
use App\Http\Requests\Admin\Research\StoreResearch;
use App\Http\Requests\Admin\Research\UpdateResearch;
use App\Models\Research;
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

class ResearchController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @param IndexResearch $request
     * @return array|Factory|View
     */
    public function index(IndexResearch $request)
    {
        // create and AdminListing instance for a specific model and
        $data = AdminListing::create(Research::class)->processRequestAndGet(
            // pass the request with params
            $request,

            // set columns to query
            ['id', 'title', 'description', 'link'],

            // set columns to searchIn
            ['id', 'title', 'description', 'link']
        );

        if ($request->ajax()) {
            if ($request->has('bulk')) {
                return [
                    'bulkItems' => $data->pluck('id')
                ];
            }
            return ['data' => $data];
        }

        return view('admin.research.index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function create()
    {
        $this->authorize('admin.research.create');

        return view('admin.research.create',[
            'mode' => 'create'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreResearch $request
     * @return array|RedirectResponse|Redirector
     */
    public function store(StoreResearch $request)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Store the Research
        $research = Research::create($sanitized);

        if ($request->ajax()) {
            return ['redirect' => url('admin/research'), 'message' => trans('brackets/admin-ui::admin.operation.succeeded')];
        }

        return redirect('admin/research');
    }

    /**
     * Display the specified resource.
     *
     * @param Research $research
     * @throws AuthorizationException
     * @return void
     */
    public function show(Research $research)
    {
        $this->authorize('admin.research.show', $research);

        // TODO your code goes here
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Research $research
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function edit(Research $research)
    {
        $this->authorize('admin.research.edit', $research);


        return view('admin.research.edit', [
            'research' => $research,
            'mode' => 'edit'
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param UpdateResearch $request
     * @param Research $research
     * @return array|RedirectResponse|Redirector
     */
    public function update(UpdateResearch $request, Research $research)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Update changed values Research
        $research->update($sanitized);

        if ($request->ajax()) {
            return [
                'redirect' => url('admin/research'),
                'message' => trans('brackets/admin-ui::admin.operation.succeeded'),
            ];
        }

        return redirect('admin/research');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param DestroyResearch $request
     * @param Research $research
     * @throws Exception
     * @return ResponseFactory|RedirectResponse|Response
     */
    public function destroy(DestroyResearch $request, Research $research)
    {
        $research->delete();

        if ($request->ajax()) {
            return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
        }

        return redirect()->back();
    }

    /**
     * Remove the specified resources from storage.
     *
     * @param BulkDestroyResearch $request
     * @throws Exception
     * @return Response|bool
     */
    public function bulkDestroy(BulkDestroyResearch $request) : Response
    {
        DB::transaction(static function () use ($request) {
            collect($request->data['ids'])
                ->chunk(1000)
                ->each(static function ($bulkChunk) {
                    Research::whereIn('id', $bulkChunk)->delete();

                    // TODO your code goes here
                });
        });

        return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
    }
}
