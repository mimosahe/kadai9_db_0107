<?php
ini_set('display_errors', 'On');  // エラーを表示させる
error_reporting(E_ALL);           // 全てのレベルのエラーを表示させる

// 0. SESSION開始！！
session_start();

//１．関数群の読み込み
require_once('funcs.php');
loginCheck();

//２．データ登録SQL作成
$pdo = db_conn();
$stmt = $pdo->prepare('SELECT * FROM gs_bm_table');
$status = $stmt->execute();

//３．データ表示
$view = '';
if ($status == false) {
    sql_error($stmt);
} else {
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $isbnIndex = strpos(h($result['url']), '/dp/'); //'/dp/'の開始バイト数を取得
        $urllen = strlen(h($result['url']));
        $isbn = substr(h($result['url']), $isbnIndex + 4, 10);

        $shorturl = 'https://www.amazon.co.jp/dp/'. $isbn;
        $str = '<p>'. $result['id']. ' , '. h($result['name']). ' , '.'<a href="'. $shorturl.'" target="_blank" rel="noopener noreferrer">'. $shorturl. '</a>'. ' , '. $result['comment']. ' , '.'<button onclick="location.href=\'detail.php?id=' . $result['id'] . '\'">編集</button>'.' , '.'<button onclick="location.href=\'delete.php?id=' . $result['id'] . '\'">削除</button>'.'</p>';
        $ary = explode(",", $str); //文字列を配列に変換
        $view .= '<tr>';
            for($i = 0; $i < sizeof($ary); $i++){
                $view .= "<td> {$ary[$i]} </td>";
            }
        $view .='</tr>';
    }
}
?>


<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>お気に入り本一覧表示</title>
    <link rel="stylesheet" href="css/range.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>

<body id="main">
    <!-- Head[Start] -->
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.php">データ登録</a>
                    <a class="navbar-brand" href="logout.php">ログアウト</a>
                </div>
            </div>
        </nav>
    </header>
    <!-- Head[End] -->

    <!-- Main[Start] -->
    <div>
        <div class="container jumbotron">
        <h2>お気に入り本一覧</h2>
            <table border="1">
                <tr>
                    <th>id</th>
                    <th>title</th>
                    <th>url</th>
                    <th>comment</th>
                    <th>編集</th>
                    <th>削除</th>
                </tr>
            <?= $view ?>
        </div>
    </div>
    <!-- Main[End] -->

</body>

</html>
