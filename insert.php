<?php
ini_set('display_errors', 'On');  // エラーを表示させる
error_reporting(E_ALL);           // 全てのレベルのエラーを表示させる

//1. POSTデータ取得
$name = $_POST['name'];
$url = $_POST['url'];
$comment = $_POST['comment'];

//2. DB接続します
require_once('funcs.php');
$pdo = db_conn();

//３．データ登録SQL作成
//  1. SQL文を用意
$stmt = $pdo->prepare("INSERT INTO
                        gs_bm_table(id, name, url, comment, indate)
                        VALUES(NULL, :name, :url, :comment, sysdate() ) ");

//  2. バインド変数を用意
// Integer 数値の場合 PDO::PARAM_INT
// String 文字列の場合 PDO::PARAM_STR

$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':url', $url, PDO::PARAM_STR);
$stmt->bindValue(':comment', $comment, PDO::PARAM_STR);

//  3. 実行
$status = $stmt->execute();

//４．データ登録処理後
if ($status == false) {
    sql_error($stmt);
} else {
    redirect('index.php');
}
