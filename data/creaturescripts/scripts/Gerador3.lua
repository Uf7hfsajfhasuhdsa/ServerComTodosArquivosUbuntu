local bosses = {"Crystal Vilarejo"}

function onKill(cid, target, lastHit)
	if isInArray(bosses,getCreatureName(target)) then
		doBroadcastMessage("[Vilarejo] O Shinobi ["..getCreatureName(cid).."] e sua Guild ["..getPlayerGuildName(cid).."] Destruiram o "..getCreatureName(target).." e vao Dominar o Vilarejo - Corram para Imperdir Shinobis !")
	end
	return true


end