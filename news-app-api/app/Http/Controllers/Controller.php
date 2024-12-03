<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

/**
 * @OA\Info(
 *     title="My API Documentation",
 *     version="1.0.0",
 *     description="This is the documentation for My API.",
 *     @OA\Contact(
 *         email="support@myapi.com"
 *     ),
 *     @OA\License(
 *         name="Apache 2.0",
 *         url="http://www.apache.org/licenses/LICENSE-2.0.html"
 *     )
 * )
 */
abstract class Controller
{
    // Base controller logic
}
