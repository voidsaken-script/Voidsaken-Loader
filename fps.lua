local RunService = game:GetService("RunService")

local fpsUtil = {}
do
	local last = os.clock()
	local fps = 0

	RunService.RenderStepped:Connect(function()
		local now = os.clock()
		fps = 1 / (now - last)
		last = now
	end)

	function fpsUtil.GetFPS()
		return fps
	end
end

return fpsUtil
