<?php
/**
 * Created by PhpStorm.
 * User: zhanglei02
 * Date: 2018/4/18
 * Time: 上午10:38
 */
namespace Douyasi\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Redis;

/**
 * 内容模型
 */
class ArticleDate extends Model
{
    protected $table = 'articles_';

    protected $primaryKey = 'id';
    protected $index_table = "YASCMF_BASE_INDEZ_TABLE_NAME";

    protected $fillable = [
        'title',
        'slug',
        'cid',
        'description',
    ];

    public function setTable($date)
    {
        $table_name = Redis::get($this->index_table);
        $this->table = str_replace("yascmf_", "", $table_name);

        return $this;
    }


    public function getIndex(){
        $date = date("Ym");
        $this->setTable($date);

    }

    public function category()
    {
        //模型名 外键 本键
        return $this->hasOne('Douyasi\Models\Category', 'id', 'cid');
    }

}
