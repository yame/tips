artisan make:controller SwaggerController

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class SwaggerController extends Controller
{
    /**
     * ����JSON��ʽ��Swagger����
     */
    public function getJSON()
    {

    }

    /**
     * ��������Ŀ�е�һ��API
     */
    public function getMyData()
    {

    }

}
Route::group(['prefix' => 'swagger'], function () {
    Route::get('json', 'SwaggerController@getJSON');
    Route::get('my-data', 'SwaggerController@getMyData');
});


/**
     * ����JSON��ʽ��Swagger����
     *
     * ������Ҫһ����`Swagger`���壺
     * @SWG\Swagger(
     *   @SWG\Info(
     *     title="�ҵ�`Swagger`API�ĵ�",
     *     version="1.0.0"
     *   )
     * )
     */
    public function getJSON()
    {
        // ����Խ�API��`Swagger Annotation`д��ʵ��API�Ĵ����ԣ��Ӷ�����ά����
        // `swagger-php`��ɨ���㶨���Ŀ¼���Զ��ϲ����ж��塣��������ֱ����`Controller/`
        // �ļ��С�
        $swagger = \Swagger\scan(app_path('Http/Controllers/'));

        return response()->json($swagger, 200);
    }

	
	/**
     * ��������Ŀ�е�һ��API
     *
     * @SWG\Get(path="/swagger/my-data",
     *   tags={"project"},
     *   summary="��һЩ���ص�����",
     *   description="����ýӿ���Ҫ�ȵ�¼��",
     *   operationId="getMyData",
     *   produces={"application/json"},
     *   @SWG\Parameter(
     *     in="formData",
     *     name="reason",
     *     type="string",
     *     description="�����ݵ�����",
     *     required=true,
     *   ),
     *   @SWG\Response(response="default", description="�����ɹ�")
     * )
     */
    public function getMyData()
    {
        //todo ��ʵ��
    }
	
	
	git clone https://github.com/swagger-api/swagger-ui.git
	copy dist to public