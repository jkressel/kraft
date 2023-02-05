@ find_arg @
identifier func;
identifier arg;
type T;
@@

func(...,
- T* arg
+ T* __capability arg
, ...) { ... }





@ find_ptr_ret @
identifier func;
type T;
@@

T* func(...) { ... }


@@
identifier find_ptr_ret.func;
type find_ptr_ret.T;
@@

- T*
+ T* __capability
func(...) { ... }


@ ptr_var_dcl_ass @
identifier x;
type ptr;
expression y;
@@

ptr* 
+ __capability 
x= y;



@ ptr_var_dcl_ass_comm @
identifier x;
type ptr;
expression y;
@@

...,ptr* 
+ __capability 
x;



@ ptr_var @
identifier x;
type ptr;
@@

- ptr* x;
+ ptr* __capability x;


@ fields @
identifier x;
identifier y;
type ptr;
@@

struct x {
    ...
-   ptr* y;
+   ptr *__capability y;
    ...    
};
