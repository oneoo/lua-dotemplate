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
    
dotemplate('index.html')
print('======================================')
print(dotemplate('index.html',1))
print('end!')