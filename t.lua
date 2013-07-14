require('dotemplate')
datas = {
            {
                name='Name 1'
            },
            {
                name='Name 2'
            },
        }

user = 'one' -- don't set local obj!, the template script can't get local objects
    
dotemplate('t.html')
print('======================================')
print(dotemplate('t.html',1))
print('end!')