/*
**  Written by MtgCore
**  Rewritten by Poszer & Talamortis https://github.com/poszer/ & https://github.com/talamortis/
**  AzerothCore 2019 http://www.azerothcore.org/
**  Cleaned and made into a module by Micrah https://github.com/milestorme/
*/

#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedGossip.h"

class NpcServices : public CreatureScript
{
public:
    NpcServices() : CreatureScript("mod_npc_services") { }

    bool OnGossipHello(Player* player, Creature* creature) override;
    bool OnGossipSelect(Player* player, Creature* /*creature*/, uint32 /*sender*/, uint32 action) override;
};

void AddSC_Npc_Services()
{
    new NpcServices();
}
