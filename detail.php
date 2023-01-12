<?php
ini_set('display_errors', 'On');  // エラーを表示させる
error_reporting(E_ALL);           // 全てのレベルのエラーを表示させる

$id = $_GET['id'];
require_once('funcs.php');
$pdo = db_conn();

$stmt = $pdo->prepare('SELECT * FROM gs_bm_table WHERE id = :id;');
$stmt->bindValue(':id', $id, PDO::PARAM_INT); //PARAM_INTなので注意
$status = $stmt->execute();

//４．データ登録処理後
if ($status === false) {
    //*** function化する！******\
    $error = $stmt->errorInfo();
    exit('SQLError:' . print_r($error, true));
} else {
    // データが取得できた場合の処理
    $result = $stmt->fetch();
}
?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>データ登録</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>

<body>
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="select.php">データ一覧</a></div>
                <div class="navbar-header"><a class="navbar-brand" href="logout.php">ログアウト</a></div>
            </div>
        </nav>
    </header>

    <!-- method, action, 各inputのnameを確認してください。  -->
    <form method="POST" action="update.php">
        <div class="jumbotron">
            <fieldset>
                <legend>お気に入り本登録</legend>
                <label>書籍名：<input type="text" name="name" value="<?= $result['name']?>"></label><br>
                <label>書籍URL：<input type="text" name="url" value="<?= $result['url']?>"></label><br>
                <label>コメント：<textArea name="comment" rows="4" cols="40"><?= $result['comment']?></textArea></label><br>
                <input type="hidden" name="id" value="<?= $result['id']?>"><br>
                <input type="submit" value="登録">
            </fieldset>
        </div>
    </form>
</body>
</html>
