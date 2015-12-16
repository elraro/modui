

    local orig = {}

    for i = 0, 23 do                    -- AURA
        local bu = _G['BuffButton'..i]
        local du = _G['BuffButton'..i..'Duration']
        modSkin(bu, 16)
        modSkinPadding(bu, 2)
        modSkinColor(bu, .2, .2, .2)
        du:ClearAllPoints() du:SetPoint('CENTER', bu, 'BOTTOM', 2, -9)
    end

    for i = 1, 2 do
        local bu = _G['TempEnchant'..i]
        _G['TempEnchant'..i]:SetAlpha(0)
        modSkin(bu, 16)
        modSkinPadding(bu, 2)
        modSkinColor(bu, 1, 0, 1)
    end

    orig.BuffButton_Update = BuffButton_Update
    function BuffButton_Update()
        orig.BuffButton_Update()
        local name = this:GetName()
        local d = _G[name..'Border']
        if d then
            local r, g, b = d:GetVertexColor()
            modSkinColor(this, r*.7, g*.7, b*.7)
        end
    end

    --