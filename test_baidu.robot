***Settings***
Library        SeleniumLibrary
***Test Cases***
Baidu search case
    Open Browser    http://www.baidu.com    chrome
    #Input text    id=kw    robot framework
    #click button    id=su
    #${name}    Get Element Attribute    id=kw@name
    #log    ${name}
    ${title}    get title
    should contain    ${title}    百度一下啦

    close Browser