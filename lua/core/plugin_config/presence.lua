require('presence'):setup({
    -- Other options

    -- Customize activity text
    neovim_image_text = "Coding with Neovim",
    auto_update = true,          -- Update presence automatically
    main_image = "neovim",        -- Main image type
    debounce_timeout = 10,        -- Debounce timeout in seconds
    enable_line_number = true,    -- Show line number in presence
    blacklist = {},               -- List of filetypes to exclude
    buttons = true,              -- Show buttons for Discord presence

    -- Additional options
    editing_text = "Editing %s", -- Customize the editing text
    file_explorer_text = "Exploring files", -- Customize the file explorer text
    git_commit_text = "Committing changes", -- Customize the git commit text
    line_number_text = "Line %s", -- Customize line number text
})
