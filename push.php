

<script>
    function notifyMe (title, desc, img) {
        var notification = new Notification (title, {
            tag : "ache-mail",
            body : desc,
            icon : img
        });
    }
    
    function notifSet (title, desc, img="https://sun9-42.userapi.com/impf/L0INCwHPl9F_qJ9Ay823_IHL3RRctfZjNB_BlQ/mVefqAoJV7E.jpg?size=706x705&quality=96&proxy=1&sign=49e02c91d41596663aab8abc5faf3f0e") {
        if (!("Notification" in window))
            alert ("Ваш браузер не поддерживает уведомления.");
        else if (Notification.permission === "granted")
            notifyMe(title, desc, img);
        else if (Notification.permission !== "denied") {
            Notification.requestPermission (function (permission) {
                if (!('permission' in Notification))
                    Notification.permission = permission;
                if (permission === "granted")
                    notifyMe(title. desc, img);
            });
        }
    }
//    notifSet();
</script>
<?php
function getActualTasks($db){
    $dateTime = new dateTime("now", new DateTimeZone('Europe/Moscow'));

   
    $query = "select * from task where deadline = '".$dateTime->format("Y-m-d")."' and time > '".$dateTime->format("H:m:s")."' and time < '".$dateTime->add(new DateInterval('PT1H'))->format("H:m:s")."'";
    $result = pg_query($db, $query);
    $tasks= pg_fetch_all($result);
    foreach ($tasks as $task) {
        if ($task['img']=='') $task['img']="https://sun9-42.userapi.com/impf/L0INCwHPl9F_qJ9Ay823_IHL3RRctfZjNB_BlQ/mVefqAoJV7E.jpg?size=706x705&quality=96&proxy=1&sign=49e02c91d41596663aab8abc5faf3f0e";
        echo "<script>notifSet('".$task['task']."', '".$task['description'].", planned on ".$task['time']."', '".$task['img']."');</script><br>";
        $number+=5000;

    }
}
?>


