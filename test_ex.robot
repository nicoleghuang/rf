***Settings***
Library        SeleniumLibrary
***Test Cases***
ex login case
    Open Browser    http://www.coinex.com/account/signin    chrome

    Maximize Browser Window
    #Get Window Size    1920    768
    #${width}    ${height}   get window Size
    #log    ${width}
    #log    ${height}
    sleep    10
    Input text    xpath=//*[@id="__nuxt"]/div[2]/div[3]/div/div[3]/div/div[2]/form/div[2]/div[1]/div/input    usename
    Input text    xpath=//*[@id="__nuxt"]/div[2]/div[3]/div/div[3]/div/div[2]/form/div[2]/div[2]/div/input    pw

    #${name}     Get Element Attribute    xpath=//*[@id="__nuxt"]/div[2]/div[3]/div/div[3]/div/div[2]/form/div[2]/div[1]/div/input@name
    #log    ${name}

    sleep       15
    click button    xpath=//*[@id="__nuxt"]/div[2]/div[3]/div/div[3]/div/div[2]/form/div[4]/button
    #Wait Until Page Contains Element    xpath=//*[@id="__BVID__123___BV_toggle_"]/span    60    error
    ${current cookie}    get cookies
    log    ${current cookie}
    #${value}    get cookie value    token
    #log    ${value}
    #add cookie    token    xxx
    #Reload Page
    #delete cookie    _ga
    ${current cookie}    get cookies
    log    ${current cookie}

    #Wait Until Page Contains Element    xpath=//*[@id="__BVID__123___BV_toggle_"]/span    60    error
    #${text}    get text    xpath=//*[@id="__BVID__123___BV_toggle_"]/span
    #log    ${text}

    ${title}    get title
    log    ${title}


    #close Browser


