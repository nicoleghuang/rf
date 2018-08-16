***Test Cases***
test case1
	log    robot framework
	log    python

test case3
    ${hi}   Catenate    hello   world
    log    ${hi}

test case4
    ${hi}    Catenate   SEPATATOR=-   he-llo---world
    log    ${hi}

test case5
    @{abc}    Create List   a    b    c
    log many    @{abc}

test case6
    ${t}    get time
    log    ${t}

test case7
    ${t}    get time
    sleep    5
    ${t}    get time

test case8
    ${a}   Set variable    90
    run keyword if    ${a}>=90    log    优秀
    ...    ELSE IF   ${a}>=60    log    及格
    ...    ELSE    log     不及格

test case9
    :FOR    ${i}    IN RANGE    10
    \   log    ${i}
test case10
    @{abc}    create list   a    b    c
    :FOR    ${i}    in    @{abc}
    \   log    ${i}

test case11
    ${d}    Evaluate    random.randint(1000,9999)   random
    log    ${d}

test case12
    Import Library      D:/rf_test/count.py
    ${a}    Evaluate    int(4)
    ${b}    Evaluate    int(5)
    ${add}    add    ${a}    ${b}
    log    ${add}

test case13
    comment    这是注释
    #这也是注释