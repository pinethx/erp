-- 계정 권한 부여
grant all
   on erp.*
   to 'user_erp'@'localhost'
identified by 'rootroot';

grant file
   on *.*
   to 'user_erp'@'localhost';
   

