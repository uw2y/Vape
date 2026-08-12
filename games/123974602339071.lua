local vape = shared.vape
vape.run = function(x) return x() end;

vape.run(function()
    local TestPrint: table = { ["Enabled"] = false };

    local Messages: {string} = {
        "hsf",
        "abc",
        "xyz",
        "lol",
        "rng",
        "bruh",
        "gg",
        "ok",
        "hi",
        "bye"
    };

    TestPrint = vape.Categories.Utility:CreateModule({
        ["Name"] = "TestPrint",
        ["Tooltip"] = "Prints random messages to console.",
        ["Function"] = function(callback: boolean): ()
            TestPrint["Enabled"] = callback;

            if callback then
                task.spawn(function()
                    while TestPrint["Enabled"] do
                        print(Messages[math.random(1, #Messages)])
                        task.wait(1)
                    end
                end)
            end
        end
    });
end);
