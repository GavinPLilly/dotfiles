function disableAll()
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    local updated_lines = {}

    for _, line in ipairs(lines) do
        if line:find('@Test') then
            local disabled_line = line:gsub('Test', 'Disabled')
            table.insert(updated_lines, disabled_line)
        elseif line:find('@ParameterizedTest') then
            local disabled_line = line:gsub('ParameterizedTest', 'Disabled')
            table.insert(updated_lines, disabled_line)
        end
        table.insert(updated_lines, line)
    end

    vim.api.nvim_buf_set_lines(0, 0, -1, false, updated_lines)
end

function enableAll()
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    local updated_lines = {}

    for _, line in ipairs(lines) do
        if not line:find('@Disabled') then
            table.insert(updated_lines, line)
        end
    end

    vim.api.nvim_buf_set_lines(0, 0, -1, false, updated_lines)
end
