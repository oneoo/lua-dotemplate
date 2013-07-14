Name
====

lua-dotemplate - simple Lua template parser.

Status
======

This library is considered experimental and still under active development.

Install
=======

    $tar zxf lua-dotemplate-*.tar.gz
    $cd lua-dotemplate-*
    $sudo make install

Synopsis
========
Template File
---

    <body>
        {{if user then}}Hi, {{=user}}.
        {{else}}
        <a href="/login">Login</a>
        {{end}}
        
        #for loop
        {{for k,v in ipairs(datas) do}}
            {{=v.name}}<br/>
        {{end}}
    </body>
    {{include t-include.html}}

Lua Script
---

    local dot = require('dotemplate')
    
    local datas = {
                    {
                        name='Name 1'
                    },
                    {
                        name='Name 2'
                    },
                  }
    
    local user = 'one'
    
    --parse and print template
    local rt, err = dot('./t.html') -- or dotemplate(file)
    
    --parse and get template return htmls
    local html, err = dotemplate('./t.html', true)

HTML Synopsis
===

{{=var}}
---

print(var)

{{}}
---

logic codes

{{include filename}}
---

include sub template file

Lua Synopsis
===

dotemplate(file[, boolean])
---

parse the template file. be print or return htmls

**note:** all template file will be cache in 60 secs.
