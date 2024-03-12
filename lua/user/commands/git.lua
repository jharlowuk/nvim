function MyCustomCommand()
  print("Example custom command")
end

vim.cmd("command! MyCustomCommand lua MyCustomCommand()")