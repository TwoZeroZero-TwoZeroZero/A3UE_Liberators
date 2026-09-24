waitUntil {
    sleep 0.5;
    !isNil "serverInitDone" && {serverInitDone}
};
if (areInvadersFriendly == 2) then 
{
    Invaders setFriend [teamPlayer,1];
    teamPlayer setFriend [Invaders,1];
};
