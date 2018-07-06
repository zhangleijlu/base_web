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
class ArticleCat extends Model
{
    protected $table = 'articles_cat_';

    protected $primaryKey = 'id';
    protected $index_table = "YASCMF_BASE_INDEZ_TABLE_NAME";

    protected $fillable = [
        'title',
        'slug',
        'cid',
        'description',
    ];

    public function setTable($cid)
    {
        $this->table = $this->table.($cid%10);

        return $this;
    }


    public function getArticle($cid){
        $date = date("Ym");
        $this->setTable($date);

    }

    public function category()
    {
        //模型名 外键 本键
        return $this->hasOne('Douyasi\Models\Category', 'id', 'cid');
    }

}
