<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Favorite;
use Illuminate\Http\Request;

class FavoriteController extends Controller
{
    /**
     * Display a listing of the user's favorites.
     */
    public function index(Request $request)
    {
        $userId = $request->user()->id;

        $favorites = Favorite::with('berita')
            ->where('user_id', $userId)
            ->get();

        return response()->json([
            'success' => true,
            'data' => $favorites
        ]);
    }

    /**
     * Store a newly created favorite.
     */
    public function store(Request $request)
    {
        $request->validate([
            'berita_id' => 'required|exists:beritas,id',
        ]);

        $userId = $request->user()->id;

        // Check if the favorite already exists
        $exists = Favorite::where('user_id', $userId)
            ->where('berita_id', $request->berita_id)
            ->exists();

        if ($exists) {
            return response()->json([
                'success' => false,
                'message' => 'Berita ini sudah ditambahkan ke favorit.'
            ], 409);
        }

        $favorite = Favorite::create([
            'user_id' => $userId,
            'berita_id' => $request->berita_id,
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Berita berhasil ditambahkan ke favorit.',
            'data' => $favorite
        ]);
    }

    /**
     * Remove the specified favorite.
     */
    public function destroy(Request $request, $id)
    {
        $userId = $request->user()->id;

        $favorite = Favorite::where('user_id', $userId)
            ->where('berita_id', $id)
            ->first();

        if (!$favorite) {
            return response()->json([
                'success' => false,
                'message' => 'Berita favorit tidak ditemukan.'
            ], 404);
        }

        $favorite->delete();

        return response()->json([
            'success' => true,
            'message' => 'Berita berhasil dihapus dari favorit.'
        ]);
    }
}
