local fn = vim.fn
local cmd = vim.cmd
local api = vim.api

cmd([[
    hi BqfPreviewBorder guifg=#50a14f ctermfg=71
    hi link BqfPreviewRange Search
]])

--packadd! nvim-treesitter
--packadd! coc.nvim
cmd([[
    packadd! nvim-bqf
]])

-- vim.schedule(function()
--     cmd('au! CocFzfLocation User CocLocationsChange')
-- end)
vim.g.coc_enable_locationlist = 0
cmd([[
    aug Coc
        au!
        au User CocLocationsChange ++nested lua _G.jump2loc()
    aug END
]])

--nmap <silent> gr <Plug>(coc-references)
cmd([[
    nmap <silent> <c-s> <Plug>(coc-references)
    nmap <silent> <c-]> <Plug>(coc-definition)
    nmap <silent> <c-y> <Plug>(coc-implementation)
    nnoremap <silent> <leader>qd <Cmd>lua _G.diagnostic()<CR>
]])

-- just use `_G` prefix as a global function for a demo
-- please use module instead in reality
function _G.jump2loc(locs)
    locs = locs or vim.g.coc_jump_locations
    local loc_ranges = vim.tbl_map(function(val)
        return val.range
    end, locs)
    fn.setloclist(0, {}, ' ', {
        title = 'CocLocationList',
        items = locs,
        context = {bqf = {lsp_ranges_hl = loc_ranges}}
    })
    local winid = fn.getloclist(0, {winid = 0}).winid
    if winid == 0 then
        cmd('abo lw')
    else
        api.nvim_set_current_win(winid)
    end
end

function _G.diagnostic()
    fn.CocActionAsync('diagnosticList', '', function(err, res)
        if err == vim.NIL then
            local items, loc_ranges = {}, {}
            for _, d in ipairs(res) do
                local text = ('[%s%s] %s'):format((d.source == '' and 'coc.nvim' or d.source),
                    (d.code == vim.NIL and '' or ' ' .. d.code), d.message:match('([^\n]+)\n*'))
                local item = {
                    filename = d.file,
                    lnum = d.lnum,
                    col = d.col,
                    text = text,
                    type = d.severity
                }
                table.insert(loc_ranges, d.location.range)
                table.insert(items, item)
            end
            fn.setqflist({}, ' ', {
                title = 'CocDiagnosticList',
                items = items,
                context = {bqf = {lsp_ranges_hl = loc_ranges}}
            })

            cmd('bo cope')
        end
    end)
end
