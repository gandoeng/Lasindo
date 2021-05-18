
<?php

//symlink storage:link bukan buat public_html
$target = '/home/lasindo/lasindo.com-core/lasindo.com/storage/app/public';
$shortcut = '/home/lasindo/lasindo.com-core/lasindo.com/public/storage';

symlink($target, $shortcut);
echo 'Work done.';

// phpinfo();

?>