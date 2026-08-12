local vape = shared.vape
vape.run = function(x) return x() end;

for _, v in {
    'AntiFall', 'Fly', 'HighJump', 'HitBoxes', 'Invisible', 'Jesus', 'Killaura', 'LongJump',
    'MouseTP', 'Phase', 'Speed', 'Spider', 'SpinBot', 'Swim', 'TargetStrafe', 'Timer',
    'AimAssist', 'AutoClicker', 'Reach', 'SilentAim', 'TriggerBot',
    'Atmosphere', 'Breadcrumbs', 'Cape', 'ChinaHat', 'Clock', 'Disguise', 'FOV', 'FPS',
    'Keystrokes', 'Memory', 'Ping', 'SongBeats', 'Speedmeter', 'TimeChanger',
    'MurderMystery',
    'Arrows', 'Chams', 'ESP', 'Fullbright', 'GamingChair', 'Health', 'NameTags',
    'PlayerModel', 'Radar', 'Search', 'SessionInfo', 'Tracers', 'Waypoints',
    'AnimationPlayer', 'AntiRagdoll', 'AutoRejoin', 'Blink', 'ChatSpammer', 'Disabler',
    'Panic', 'Rejoin', 'ServerHop', 'StaffDetector', 'StateSpoofer',
    'Anti-AFK', 'FastProxPrompt', 'Freecam', 'Gravity', 'Parkour', 'SafeWalk', 'Wallhop', 'Xray'
} do
    vape:Remove(v);
end;

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
