# #The non-VSCode version
# @schedule begin
#     sleep(0.1)
#     @eval using Revise
# end

#vscode version
atreplinit() do REPL
    @schedule begin
        sleep(0.1)
        try
            @eval using Revise
        catch err
            warn("Could not load Revise.")
        end
    end
end

