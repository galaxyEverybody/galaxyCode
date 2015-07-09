<?php if ($this->_var['user_info']): ?>
	<a href="user.php">你好，<?php echo $this->_var['user_info']['username']; ?></a>！
<?php else: ?>
	<a href="user.php">你好，请登录</a>
<?php endif; ?>
            
