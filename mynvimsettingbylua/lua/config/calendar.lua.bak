function calendar()
    vim.cmd [[packadd! calendar-vim]]
    vim.cmd[[
        "设置calendar
        let g:calendar_diary = expand('~/.config/.canlendar')"设置日记的存储路径
        let g:calendar_monday = 1           "以星期一为开始
        let g:calendar_focus_today = 1      "光标在当天的日期上
        let g:calendar_mark = 'left-fit' "可以让*和数字可靠近
        let g:calendar_mark = 'right' "上面设置后在昨天写日志,修改成right正常
        let g:calendar_mruler = '一月,二月,三月,四月,五月,六月,七月,八月,九月,十月,十一月,十二月'     "中文,可自行修改
        let g:calendar_wruler = '日 一 二 三 四 五 六'
        let g:calendar_navi_label = '往前,今日,往后'
        "map <leader>cal :Calendar<cr>         "快捷键,默认 <leader>cal,水平方向：<leader>caL
    ]]
end
calendar()
