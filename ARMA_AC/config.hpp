
#include "Macros.h"

#define false 0
#define true 1

/** to Enable the MP filtering feature , please go to the MP config **/
#include "MP_config.hpp"

class ARMA_AC {

folder = "ARMA_AC";

enabled = true; //enable the anti cheat client side , will not disable the mp filtering
debug = true; //debug mode , just to not be kicked every time when testing ...

/** please config properly your weapons , vehicles and variables , the admin menu can help you in this case **/
display_check[] = {true,"KICK"};
vehicles_check[] = {false,"KICK"};
weaponHolder_check[] = {false,"KICK"};
variables_check[] = {true,"CRASH"};
files_check[] = {true,"CRASH"};
chat_check[] = {true,"NOTHING"};
<<<<<<< HEAD
external_scripts_check[] = {false,"NOTHING"}; // experimental
=======
external_scripts_check[] = {false,"NOTHING"}; 
>>>>>>> origin/master
tp_check[] = {true,"NOTHING"};

admins[] = {
   "76561197970859000","_SP_PLAYER_"
}; // your uid here , don't remove SP PLAYER if you want to test in solo

class chatCfg {
    remove_ip = true; // will remove ip with format IPV4
    remove_url = true; //will remove websites url's
    badWords[] = {"fuck"};
};

badFiles[] = {"Cheat File","JM3.sqf","JM3.png","MORT.jpg","wookie.sqf","wookie_wuat\start.sqf","lystoarma3\start.sqf","help.sqf","hack.sqf","cheat.sqf","JxMxE.sqf","JME.sqf","wookiev5.sqf","menu.sqf","fn_MP.sqf","1.sqf","2.sqf","3.sqf","ExtasyFinalMenu.sqf","aimkill.sqf","AlPmaker_survcam.sqf","inventory.sqf","teleport_selected_vehicle_v2.sqf","backpack_star.sqf","infiSTAR_weaponbox_r_a.sqf","SSPCM\preinit.sqf","SSPCM\CheatDiary\CheatInit.sqf","SSPCM\CheatDiary\CheatMenu.sqf"};

class variablesCfg {
    class tags {
      allowed[] = {"ac_","bis_"};
      forbidden[] = {"e_x_t_a_s_y_","brg_","sni_prz_","hax_","dev_","evo_","oqrv8oyvxgqjih2afy5q_","cheat"};
    };

    class variables {
      forbidden[] = {};
      allowed[] = {"bis_fnc_feedback_deltadamage","bis_hitArray","ac_fnc_checkActiveSqfScripts","ac_fnc_getActiveSqfScripts","bis_fnc_endmission_effects","bis_fnc_missionhandlers_win","bis_fnc_missionhandlers_end","rscmissionend_win","rscmissionend_end","ac_fnc_handleAction","ac_fnc_welcomeAdmin","bis_fnc_moduleprojectile","rscdisplayloading_progressmission","bis_fnc_dotproduct","bis_fnc_dbvalueindex","bis_fnc_vrcourselaunchers3","bis_fnc_overviewterrain","bis_fnc_initmodules_ordnance","bis_fnc_unitvector","bis_fnc_setunitinsignia","bis_fnc_assignplayerrole","bis_fnc_lockeddooropen","bis_fnc_getunitinsignia","bis_fnc_getrespawninventories","bis_fnc_dbsymbolclass","bis_fnc_magnitude","bis_fnc_boundingboxmarker","bis_fnc_dbvaluelist","bis_fnc_skirmishtrigger","bis_fnc_dooropen","bis_fnc_initmodules_audio","bis_oldbleedremaining","bis_fnc_sortalphabetically","bis_fnc_modulecuratoraddpoints","bis_fnc_inv","bis_fnc_getname","bis_fnc_guieffecttiles_ppchromaberration","bis_fnc_3denvisionmode","bis_fnc_egobjectivevisualizerdraw","bis_fnc_replacewithsimpleobject","bis_fnc_getintersectionsundercursor","bis_fnc_taskalwaysvisible","bis_fnc_exp_camp_getcinematicmode","bis_fnc_setmissionstatusslot","bis_fnc_paramviewdistance","bis_fnc_prepareao","bis_fnc_disableloading","bis_fnc_taskhint","bis_fnc_modulepunishment","bis_fnc_initrespawnbackpack","bis_fnc_curatorobjectregisteredtable","bis_fnc_help","bis_fnc_inanglesector","bis_fnc_missilelaunchpositionfix","ac_fnc_onspawntypechanged","bis_fnc_moduleobjectivesector","bis_fnc_localize","bis_fnc_displaycolorget","bis_fnc_moduleweather","bis_fnc_vectordiff","bis_fnc_dbimportconfig","bis_fnc_arrayunshift","bis_fnc_ambientflyby","bis_fnc_onplayerconnected","bis_fnc_feedbackinit","bis_fnc_playendmusic","bis_fnc_modulecreatediaryrecord","bis_fnc_spawncrew","bis_fnc_unitcapture","bis_fnc_moduleeffectsfire","ac_fnc_onspawnclick","bis_fnc_setfog","bis_fnc_loadfunctions","bis_fnc_missiontaskslocal","bis_fnc_getvirtualmagazinecargo","bis_fnc_validateparametersoo","bis_fnc_listcuratorplayers","bis_fnc_establishingshot","bis_fnc_target","bis_fnc_texttiles","bis_fnc_initmodules_intel","bis_oldoxygen","bis_fnc_error","bis_fnc_getcfgdatapool","bis_fnc_kbmenu","bis_fnc_isinsidearea","bis_fnc_ffvupdate","bis_fnc_curatorobjectregistered","bis_fnc_helicoptercanfly","bis_fnc_setidentity","bis_fnc_displayclouds","bis_fnc_configextremes","bis_fnc_orbatconfigpreview","bis_fnc_initmodules_animals","bis_pptype","bis_fnc_allsynchronizedobjects","bis_fnc_taskattack","bis_fnc_initplayable","bis_fnc_tasksetdestination","bis_fnc_diagjiralink","bis_fnc_exportfunctionstowiki","bis_fnc_modulefdcpout","bis_fnc_paramweather","bis_deathblur","ac_fnc_checkfiles","bis_fnc_bleedtickets","bis_fnc_overviewauthor","bis_fnc_showcuratorfeedbackmessage","bis_fnc_moduleslingload","bis_fnc_dbimportxml","bis_fnc_diagmacrosauthor","bis_fnc_vrcoursecommandingactions1","bis_fnc_respawncounter","ac_fnc_cfgstringnbr","bis_fnc_diagknowntargets","bis_fnc_quotations","bis_fnc_configpath","bis_fnc_taskcompleted","bis_fnc_modulemissionname","bis_fnc_scenegetobjects","bis_fnc_vrcoursecommandingactions2","bis_fnc_moduleai","bis_fnc_diagaarrecord","bis_fnc_moduletracers","bis_fnc_modulettcpin","bis_fnc_ftlmanager","bis_fnc_randomindex","bis_fnc_curatorautomaticpositions","bis_fnc_curatorrespawn","bis_fnc_vrcoursecommandingactions3","bis_suffcc","bis_bleedcc","bis_performingdustpp","bis_fnc_vrfadein","bis_fnc_livefeedmoduleinit","bis_fnc_subclasses","bis_fnc_removesupportlink","bis_fnc_splitstring","bis_fnc_unpackstaticweapon","bis_fnc_radialred","bis_fnc_initmodules_multiplayer","bis_dynamictext_spawn_5","bis_fnc_curatorobjectplaced","bis_functions_mainscope","bis_fnc_execvm","bis_fnc_relposobject","bis_fnc_objectsgrabber","bis_fnc_shakegauges","bis_fnc_terraingradangle","bis_fnc_scenegetpositionbyangle","bis_deathradialblur","bis_fnc_modulecuratoraddaddons","bis_fnc_animtype","bis_fnc_moduleobjectiveracefinish","bis_fnc_selectcrew","bis_fnc_nearestposition","bis_fnc_modulechat","bis_fnc_livefeed","bis_fnc_sandstorm","bis_fnc_respawnnone","bis_fnc_moduleunits","bis_washit","bis_fnc_feedback_fatiguecc","ac_god_active","bis_fnc_ordinalnumber","bis_fnc_dbclassid","bis_fnc_vrcoursehelislingload1","bis_fnc_revivebleedout","bis_fnc_registercuratorobject","bis_fnc_keyhold","bis_fnc_modulerating","bis_fnc_modulecombatgetin","bis_fnc_moduleskiptime","bis_fnc_feedback_fatigueradialblur","bis_fnc_taskdescription","bis_fnc_moduleammo","bis_fnc_debugprofile","bis_fnc_moduletaskcreate","bis_fnc_loadvehicle","bis_fnc_effectkilledairdestructionstage2","bis_fnc_instructorfigure","bis_fnc_livefeedsetsource","bis_fnc_modulemptypesectorcontrol","bis_fnc_moveaction","bis_fnc_posdegtoutm","bis_fnc_addtopairs","bis_fnc_credits","bis_fnc_buildingpositions","bis_fnc_getrespawnmarkers","bis_fnc_addvirtualbackpackcargo","bis_fnc_vrcoursetargetdesignation1","bis_fnc_damagepulsing","bis_fnc_taskcurrent","bis_fnc_diagmissionpositions","bis_fnc_findnestedelement","bis_fnc_invslotsempty","bis_fnc_mp","bis_fnc_vrcoursetargetdesignation2","bis_fnc_helicopterseatmove","bis_fnc_monthdays","bis_fnc_commsmenutogglevisibility","bis_fnc_moduleskill","bis_hitcc","ac_fnc_checkdisplays","ac_logs","bis_fnc_respawnendmission","bis_fnc_curatorchallengegetinvehicle","bis_fnc_vrcoursetargetdesignation3","bis_fnc_selectrespawntemplate","bis_fnc_iscuratoreditable","bis_fnc_ambientblacklistadd","bis_fnc_neutralizeunit","bis_fnc_moduleanimals","bis_fnc_livefeedeffects","bis_fnc_revivecontrol","bis_add","ac_fnc_checkvehicles","ac_fnc_outputnamespace","bis_fnc_invstring","bis_fnc_dbisclass","bis_fnc_kbisspeaking","bis_fnc_singlewingslidedoorclose","bis_fnc_arraypushstack","ac_fnc_onaction","bis_fnc_effectfiredartillery","bis_fnc_iscampaign","bis_fnc_boundingboxcorner","bis_fnc_modulezoneprotection","bis_fnc_changesupportradiochannel","bis_fnc_initmodules_objectives","bis_pulsingfreq","bis_burnwet","bis_fnc_kmlimport","bis_fnc_limitsupport","bis_fnc_trimstring","bis_fnc_dbclasslist","bis_fnc_diagknownastarget","bis_fnc_randomint","bis_fnc_createobjectoo","bis_olddmg","bis_fnc_diagpreviewvehiclecrew","bis_fnc_singlewingslidedooropen","bis_fnc_crewcount","bis_fnc_dbvalueset","bis_fnc_scenesetanimationsforgroup","bis_fnc_setobjecttexture","bis_fnc_conditionalselect","bis_fnc_modulecountdown","bis_fnc_modulecuratorsetcostsdefault","bis_alfa","ac_fnc_beginwiths","bis_fnc_swapvars","bis_fnc_respawninstant","bis_fnc_setcuratorattributes","bis_fnc_teamcolor","bis_fnc_deletetask","bis_fnc_moduledooropen","bis_fnc_keycode","bis_fnc_animviewer","bis_fnc_objecttype","bis_fnc_gcinit","bis_fnc_removevirtualitemcargo","bis_fnc_removecommmenuitem","bis_fnc_vrcoursecommandingmovement1","bis_fnc_orbatsetgroupparams","bis_fnc_modulebootcampstage","bis_fnc_randompostrigger","bis_fnc_rankparams","bis_fnc_livefeedmodulesettarget","bis_fnc_initrespawn","bis_fnc_moduleobjectivemove","bis_fnc_typetext","bis_fnc_getlinedist","bis_fnc_taskpatrol","bis_fnc_vrcoursecommandingmovement2","bis_fnc_customgps","bis_fnc_fatigueeffect","bis_fnc_countdown","bis_fnc_livefeedmoduleeffects","bis_fnc_moduletasksetdescription","bis_fnc_moduledamage","bis_fnc_paramdaytime","bis_fnc_curatorobjectedited","bis_fnc_moduleeffectsshells","bis_fnc_animalsitespawn","bis_fnc_vrcourseweaponhandlingb1","bis_fnc_guigridtoprofile","bis_fnc_modulesfx","bis_oldwasburning","bis_pp_burning","bis_fnc_guieffecttiles","bis_fnc_unitplayfiring","bis_fnc_sideid","bis_fnc_vrcourseweaponhandlingb2","bis_fnc_moduletimetrial","bis_fnc_setdate","bis_counter","bis_fnc_kbtell","bis_fnc_modulevolume","bis_fnc_selectrandom","bis_fnc_vectoradd","bis_fnc_exportcfgvehicles","bis_fnc_vrcourseweaponhandlingb3","bis_fnc_startloadingscreen_ids","bis_fnc_incapacitatedeffect","bis_fnc_spawngroup","bis_fnc_removedestroyedcuratoreditableobjects","bis_fnc_uniqueclasses","bis_fnc_getcfgdataobject","bis_fnc_modulecuratorsetcoefs","bis_fnc_modulearsenal","bis_fnc_scenesetbehaviour","bis_fnc_vrcourseplaceables1","bis_fnc_vectorfromxtoy","bis_fnc_modulecuratorsetobjectcost","bis_fnc_romannumeral","bis_fnc_reviveincapacitate","bis_fnc_moduleobjectiveracestart","bis_fnc_vrcourseplaceables2","bis_fnc_numberdigits","bis_fnc_diagloop","bis_fnc_diagradio","bis_fnc_overviewmission","bis_fnc_doornohandleclose","bis_fnc_initmodules_no_category","ac_fnc_findplayerbyuid","bis_fnc_errormsg","bis_fnc_returnvehicleturrets","bis_fnc_consolidatearray","bis_fnc_initmodules_groupmodifiers","bis_fnc_taskchildren","bis_fnc_moduleposter","bis_fnc_vrcourseplaceables3","bis_fnc_addrespawninventory","bis_fnc_customgpsvideo","bis_fnc_initmodules_chemlights","bis_fnc_rsclayer_list","bis_damagefromexplosion","bis_fnc_startloadingscreen","bis_fnc_modulecuratorsetcostsvehicleclass","bis_fnc_effectplankton","bis_fnc_sharedobjectives","bis_fnc_paramrespawntickets","bis_fnc_distance2dsqr","bis_fnc_curatorchallengefireweapon","bis_fnc_isloading","bis_fnc_zzrotate","bis_fnc_effectfiredlongsmoke","bis_fnc_sceneintruderdetector","bis_fnc_setrank","bis_fnc_overviewtimetrial","bis_fnc_earthquake","bis_fnc_arrayfinddeep","bis_fnc_setcuratorvisionmodes","bis_fnc_texturemarker","bis_fnc_inventoryexists","bis_fnc_initmodules_training","bis_fnc_singlemissionconfig","bis_fnc_locweaponinfo","bis_fnc_disablesaving","bis_fnc_vrcoursecommandingbehaviour1","bis_fnc_setnestedelement","bis_fnc_taskdefend","bis_fnc_moduleobjectivegetin","bis_fnc_maxdiffarray","bis_fnc_arsenal","bis_fnc_savevehicle","bis_fnc_scriptedmove","bis_fnc_vrcoursecommandingbehaviour2","bis_fnc_modulepostprocess","bis_fnc_movein","ac_fnc_checkweapons","ac_fnc_checkteleport","bis_fnc_packstaticweapon","bis_fnc_addstackedeventhandler","bis_fnc_ambientanim","bis_fnc_diagkey","bis_fnc_respawntimepenalty","bis_fnc_modulemodules","bis_fnc_jukebox","bis_fnc_playsound","bis_fnc_modulettcptrigger","bis_fnc_showmissionstatus","bis_fnc_vrcoursecommandingbehaviour3","bis_fnc_missiontimeleft","bis_fnc_setvehiclemass","bis_fnc_loadclass","bis_respawninprogress","bis_fnc_diagconfig","bis_fnc_addsupportlink","bis_fnc_moduleremotecontrol","bis_fnc_removevirtualmagazinecargo","bis_fnc_modulerespawnvehicle","bis_fnc_diagmissionweapons","bis_fnc_animatetaskwaypoint","bis_fnc_helicoptergethitpoints","bis_fnc_initvehiclekart","bis_fnc_addweapon","bis_fnc_filterstring","bis_fnc_scenemiscstuff","bis_fnc_movetorespawnposition","bis_fnc_classweapon","bis_fnc_getvirtualitemcargo","bis_fnc_removevirtualweaponcargo","bis_fnc_moduletimemultiplier","bis_fnc_markercreate","bis_fnc_progressloadingscreen","bis_fnc_animalrandomization","bis_helper","bis_fnc_guieditor","bis_fnc_dbsymbolvalue","bis_fnc_dbclasscheck","ac_fnc_copyconsolelbsel","bis_fnc_moduleendmission","bis_fnc_modulerespawntickets","bis_fnc_completedcuratorchallengescount","bis_fnc_flameseffect","bis_fnc_modulefdballoonairdestruction","bis_fnc_respawnmanager","bis_fnc_initcuratorattribute","bis_fnc_isinfrontof","bis_fnc_twowingslidedooropen","bis_fnc_displayname","bis_fnc_returnparents","bis_fnc_moduleexecute","bis_canstartred","bis_fnc_twowingdooronehandleclose","bis_fnc_playvideo","bis_fnc_addvirtualweaponcargo","bis_fnc_getcfgdataarray","bis_fnc_getvirtualbackpackcargo","bis_fnc_functionsdebug","bis_fnc_moduleobjectivetarget","bis_fnc_isforcedcuratorinterface","ac_fnc_mp","ac_fnc_onspawnedclick","bis_fnc_camera","bis_fnc_animalbehaviour","bis_fnc_showcuratorattributes","bis_fnc_initmodules_strategicmap","bis_fnc_returnnestedelement","bis_fnc_arithmeticmean","bis_fnc_diagwiki","bis_fnc_blackin","ac_fnc_updatespawnedlist","bis_fnc_dbvaluecheck","cheat0","bis_fnc_respawnspectator","bis_fnc_camfollow","bis_fnc_orbatremovegroupoverlay","bis_fnc_respawnmenuspectator","bis_fnc_diagvehicleicons","bis_fnc_nearestnum","bis_fnc_modulesound","bis_engineppreset","bis_fnc_wppatrol","cheat1","bis_fnc_dbvalueremove","bis_fnc_tridenthandledamage","bis_fnc_instring","bis_fnc_vrcourseheliadvanced1","bis_fnc_taskcreate","bis_fnc_guimessage","bis_fnc_posutmtodeg","cheat2","bis_fnc_curatorchallengeilluminate","bis_fnc_feedbackmain","bis_fnc_spawnobjects","bis_fnc_modulecuratoraddcameraarea","bis_fnc_vrcourseheliadvanced2","bis_fnc_typetext2","cheat3","bis_fnc_ambientplanes","bis_fnc_vrcourseheliadvanced3","bis_fnc_strategicmapopen","bis_fnc_scenesetobjects","bis_fnc_hudlimits","bis_fnc_modulerespawnposition","bis_fnc_arrayshuffle","cheat4","paramsarray","bis_fnc_tridentexecute","bis_fnc_tracebullets","bis_fnc_vrcourseheliadvanced4","bis_fnc_boundingboxdimensions","bis_fnc_exportcuratorcosttable","cheat5","param1","bis_fnc_variablespaceremove","bis_fnc_curatorpinged","bis_fnc_vrcourseheliadvanced5","bis_fnc_weaponcomponents","bis_fnc_texturevehicleicon","bis_taskmanagement_markers2d","bis_fnc_init","bis_fnc_feedback_burningtimer","bis_deathcc","bis_fnc_logformatserver","cheat6","bis_fnc_cutdecimals","param2","bis_fnc_vrcourseheliadvanced6","bis_fnc_miscanim","bis_fnc_loop","bis_fnc_displayresize","bis_fnc_initmodules_effects","bis_fnc_modulemptypedefense","cheat7","bis_fnc_modulefdballoonwaterdestruction","bis_fnc_moduleeffectsemittercreator","bis_fnc_credits_movie","ac_fnc_beginwith","cheat8","bis_fnc_keypointsexportfromkml","bis_fnc_revivesetstatus","bis_fnc_noflyzonesexport","bis_fnc_trackmissiontime","bis_fnc_markwaypoints","bis_fnc_paramguerfriendly","bis_fnc_diarymaps","bis_fnc_sidename","bis_fnc_managecuratoraddons","bis_fnc_flies","bis_fnc_relpos","bis_fnc_initmodules_smokeshells","bis_fnc_initmodules_flares","ac_fnc_mp_packet","bis_fnc_shownotification","bis_fnc_reviveexecutetemplates","cheat9","bis_fnc_modulefiringdrill","bis_fnc_displaymission","bis_fnc_diaganim","bis_fnc_curatorattributes","bis_fnc_supplydrop","bis_fnc_isunitvirtual","bis_fnc_initdisplay","bis_fnc_kbsentence","bis_fnc_moduleinit","bis_fnc_reviveiconmanager","bis_fnc_initdisplays","bis_fnc_getcfgisclass","bis_fnc_randompos","bis_fnc_twowingdooronehandleopen","bis_fnc_helicopterdamage","bis_fnc_secondstostring","bis_fnc_saymessage","bis_fnc_parsenumber","bis_fnc_vrcourseheliweapons1","bis_fnc_tasksetdescription","bis_fnc_removescriptedeventhandler","bis_fnc_playername","bis_fnc_dynamictext","bis_fnc_enemytargets","bis_fnc_initvehicle","bis_fnc_openfieldmanual","bis_fnc_modulefuel","bis_fnc_triggertomarker","bis_fnc_hatchopen","bis_fnc_version","bis_fnc_removecuratoricon","bis_fnc_paramin","bis_fnc_vrhitpart","bis_fnc_keypointsexport","bis_fnc_respawntickets","bis_fnc_modulefdstatsclear","bis_fnc_arraypush","bis_fnc_vrcourseheliweapons2","bis_fnc_diagaar","bis_fnc_unitheadgear","bis_fnc_exportcfgmagazines","bis_fnc_getidc","bis_fnc_nearesthelipad","bis_fnc_modulesimulationmanager","bis_fnc_initmultiplayer","bis_fnc_vrcourseheliweapons3","bis_fnc_feedback_damageblur","ac_fnc_receiveadmin","bis_fnc_modulemode","bis_fnc_modulespawnaioptions","bis_fnc_getidd","bis_fnc_settopairs","bis_fnc_position","bis_fnc_wpartillery","bis_fnc_briefinginit","bis_fnc_curatorchallengefindintel","bis_fnc_addclassoo","bis_fnc_orbatanimate","bis_fnc_param","bis_fnc_scriptedwaypointtype","bis_fnc_vrcourseheliweapons4","bis_fnc_feedback_damagecc","bis_fnc_tasksetstate","bis_fnc_configviewer","bis_fnc_vrcourseweaponhandlingc1","bis_fnc_classmagazine","bis_fnc_taskvar","bis_fnc_gc","bis_performpp","bis_totdesatcc","bis_fnc_getcfgdatabool","bis_fnc_crows","bis_fnc_blackout","bis_fnc_dbisvalue","bis_fnc_vrcourseweaponhandlingc2","bis_fnc_addevidence","bis_fnc_objectsmapper","bis_fnc_titlecard","bis_fnc_unitcapturesimple","bis_fnc_friendlysides","bis_fnc_returnconfigentry","bis_fnc_getcfgdata","bis_fnc_tasksunit","bis_fnc_counter","bis_fnc_relscaleddist","bis_fnc_effectfiredhelirocket","bis_fnc_noflyzone","bis_fnc_radiosetplaylist","bis_fnc_wpland","bis_fnc_helicopterseat","bis_fnc_modulecuratorsetattributes","bis_fnc_missionflow","bis_fnc_absspeed","bis_fnc_refreshcommmenu","bis_fnc_locations","bis_fnc_missionhandlers","bis_fnc_getparamvalue","bis_fnc_addcuratorchallenge","bis_fakedamage","bis_respawned","bis_fnc_savegame","bis_fnc_scenecreatescenetrigger","bis_fnc_scenecheckweapons","bis_fnc_settask","bis_fnc_estimatedtimeleft","bis_fnc_displayloading","bis_fnc_greatestnum","bis_fnc_ondiarychanged","bis_fnc_ambienthelicopters","bis_fnc_moduletriggers","bis_fnc_genericsentence","bis_burncc","bis_myoxygen","bis_fnc_initmodules_objectmodifiers","bis_fnc_sortby","bis_fnc_postogrid","bis_fnc_reviveprogress","bis_fnc_modulestrategicmaporbat","bis_fnc_tridentsetrelationship","bis_fnc_modulecuratorseteditingareatype","bis_fnc_removestackedeventhandler","bis_fnc_moduleeffectssmoke","bis_fnc_effectkilledsecondaries","bis_fnc_vrfadeout","bis_fnc_kbtopicconfig","bis_fnc_objectinventoryanimatedopen","bis_fnc_modulettcpout","bis_fnc_exportvehicle","bis_fnc_preload","bis_fnc_roundnum","bis_fnc_curatorattachobject","bis_suffradialblur","bis_fnc_drawcuratorlocations","bis_fnc_endloadingscreen","bis_fnc_magnitudesqr","bis_fnc_music","bis_fnc_modulettcpclear","bis_fnc_linearconversion","bis_fnc_vrtimer","bis_fnc_indicatebleeding","bis_fnc_effectfiredflares","bis_fnc_livefeedmodulesetsource","bis_fnc_dbconfigpath","bis_fnc_rsclayer","bis_fnc_reviveenabled","bis_fnc_selectdiarysubject","bis_fnc_playersidefaction","bis_fnc_removeindex","bis_fnc_3dcredits","bis_fnc_modulestrategicmapmission","bis_fnc_setovercast","bis_fnc_reviveonplayerrespawn","bis_fnc_guigrid","bis_fnc_briefinganimate","bis_fnc_sidecolor","bis_fnc_effectfired","bis_fnc_nearestroad","bis_fnc_singlemissionkeys","bis_fnc_modulebleedtickets","bis_fnc_radialredout","bis_fnc_colorrgbatotexture","ac_fnc_receivenotif","bis_fnc_moduleeffectsbubbles","bis_fnc_addcuratorareafromtrigger","bis_fnc_curatorvisionmodes","bis_fnc_commsmenutoggleavailability","bis_fnc_threat","bis_fnc_curatorhint","ac_fnc_open","bis_fnc_modulehvtobjective","bis_fnc_execfsm","bis_fnc_modulesavegame","bis_fnc_diaghit","bis_fnc_exportinventory","bis_fnc_fadeeffect","bis_fnc_initmodules_respawn","bis_fnc_preload_server","bis_applypp1","bis_fnc_feedback_fatiguepp","ac_fnc_onmodeselchanged","ac_god_v_active","bis_fnc_colorrgbatohtml","bis_fnc_ctrlfittotextheight","bis_fnc_codeperformance","bis_fnc_convertunits","bis_fnc_drawcuratordeaths","bis_fnc_setpitchbank","bis_fnc_mpexec","bis_fnc_enemysides","bis_applypp2","bis_ppdestroyed","bis_fnc_endmission","bis_fnc_initvirtualunit","bis_fnc_modulespawnai","bis_fnc_lockeddoornohandleopen","bis_fnc_sceneareaclearance","bis_fnc_toupperdisplaytexts","bis_applypp3","bis_fnc_phoneticalword","bis_fnc_respawnconfirm","bis_fnc_arraycompare","bis_fnc_taskparent","bis_fnc_endmissionserver","bis_fnc_findinpairs","bis_fnc_basicbackpack","bis_fnc_addvirtualitemcargo","bis_fnc_sortnum","bis_fnc_initmodules_firingdrills","bis_fnc_feedback_damageradialblur","bis_applypp4","bis_fnc_respawnrounds","bis_fnc_dirindicator","bis_fnc_isinzoom","bis_fnc_selectrandomweighted","bis_fnc_dbprint","bis_fnc_addcommmenuitem","bis_fnc_modulehvtobjectives","bis_fnc_synchronizedobjects","bis_fnc_twowingslidedoorclose","bis_applypp5","bis_uncradialblur","bis_fnc_kbcanspeak","bis_fnc_curatorchallengedestroyvehicle","bis_fnc_curatorwaypointplaced","bis_fnc_groupvehicles","bis_fnc_dbvalueid","bis_fnc_ambientanimcombat","bis_fnc_getservervariable","bis_fnc_modulemine","bis_fnc_functionpath","bis_fnc_missionconversations","bis_fnc_curatorsaymessage","bis_fnc_orbatsetgroupfade","bis_applypp6","bis_fnc_createlogrecord","bis_fnc_runlater","bis_fnc_arraypop","bis_fnc_modulecreateprojectile","bis_fnc_scenegetparticipants","bis_fnc_scenecreatesoundentities","bis_fnc_enemydetected","bis_applypp7","bis_fnc_loadinventory","bis_fnc_wpsuppress","bis_fnc_scenerotate","bis_fnc_modulecuratoraddeditingareaplayers","bis_fnc_displaycontrols","bis_fnc_dbvaluereturn","bis_fnc_removerespawnposition","bis_applypp8","bis_fnc_onload","bis_fnc_locationdescription","bis_fnc_mirrorcuratorsettings","bis_fnc_dirto","bis_fnc_reviveiconcontrol","bis_fnc_tridentgetrelationship","bis_fnc_importimagelinks","bis_fnc_showunitinfo","bis_fnc_modulehvtinit","bis_fnc_guinewsfeed","bis_fnc_feedback_testhelper","bis_deltadmg","ac_fnc_strtok","ac_fnc_mpexec","bis_fnc_curatorautomatic","bis_fnc_cinemaborder","bis_fnc_diagbulletcam","bis_fnc_shutdown","bis_fnc_executestackedeventhandler","bis_fnc_showmarkers","bis_fnc_respawngroup","bis_fnc_credits_movieconfig","bis_fnc_togglecuratorvisionmode","bis_fnc_dynamicgroups","bis_fnc_modulelightning","bis_fnc_ctrlsetscale","bis_fnc_invslottype","bis_fnc_feedback_allowdeathscreen","bis_fnc_initmodules_environment","bis_fnc_exportcfggroups","bis_fnc_initmodules_supports","bis_fnc_vrspawneffect","bis_fnc_addcuratoricon","bis_fnc_didjip","bis_fnc_moduleunlockarea","bis_fnc_commsmenucreate","bis_fnc_modulettcptriggerbehind","bis_fnc_pip","bis_fnc_invcodetoarray","bis_fnc_modulecas","bis_fnc_effectkilled","bis_fnc_markertotrigger","bis_fnc_addvirtualmagazinecargo","bis_fnc_spawnenemy","bis_disttofire","bis_fnc_cameraold","bis_fnc_iscurator","bis_fnc_doorclose","bis_fnc_colorconfigtorgba","bis_fnc_setrespawndelay","bis_fnc_setobjectrotation","bis_fnc_modulegroupid","bis_fnc_getcfgsubclasses","bis_fnc_setrespawninventory","bis_fnc_dbclassremove","bis_fnc_moduletrident","bis_fnc_numbertext","bis_fnc_reviveonplayerkilled","bis_fnc_advhintcredits","bis_fnc_rounddir","bis_unccc","bis_fnc_managecuratorchallenges","bis_fnc_modulemptypegroundsupport","bis_fnc_showrespawnmenu","bis_fnc_shakecuratorcamera","bis_fnc_vreffectkilled","bis_fnc_formatcuratorchallengeobjects","bis_fnc_halo","bis_fnc_intrigger","bis_fnc_initmodules_modes","bis_fnc_feedback_blue","ac_fnc_interactwithcontainer","bis_fnc_modulemptypegamemaster","bis_fnc_showtime","bis_fnc_respawnmenuinventory","bis_fnc_invremove","bis_fnc_initmodules_missionflow","bis_fnc_unitaddon","bis_fnc_diaryhints","bis_fnc_setidcstreamfriendly","bis_fnc_initparams","bis_fnc_moduleobjectiveracecp","bis_fnc_modulefriendlyfire","bis_fnc_removerespawninventory","bis_fnc_respawnbase","bis_fnc_getfrompairs","bis_fnc_activateaddons","bis_fnc_modulegenericradio","bis_fnc_vrdrawborder","bis_fnc_unitcapturefiring","bis_fnc_interpolateweather","bis_fnc_modulestrategicmapopen","bis_fnc_missiontasks","bis_fnc_fixdate","bis_fnc_diagkeytest","ac_fnc_removechar","bis_fnc_updateplayerarray","bis_fnc_diagmacrosnamesound","bis_fnc_halt","bis_fnc_helicoptertype","bis_fnc_healtheffects","bis_fnc_effectfiredrocket","bis_fnc_missionrespawntype","bis_fnc_isleapyear","bis_fnc_removevirtualbackpackcargo","bis_fnc_modulecuratoraddicon","bis_fnc_setppeffecttemplate","bis_fnc_spotter","bis_fnc_modulecuratoraddeditableobjects","bis_fnc_getfactions","ac_fnc_onlogselchanged","bis_fnc_mapsize","bis_fnc_moduleunlockobject","bis_fnc_diagpreview","bis_fnc_diagmacrosverify","bis_fnc_posdegtoworld","bis_fnc_modulefdfademarker","bis_fnc_doornohandleopen","bis_fnc_respect","bis_fnc_modulecuratorsetcamera","bis_fnc_guihint","bis_fnc_getunitbyuid","bis_fnc_diagmacros","bis_fnc_livefeedterminate","bis_fnc_wprelax","bis_fnc_healing","bis_fnc_overviewdifficulty","bis_fnc_logformat","bis_fnc_modulestrategicmapimage","bis_fnc_ambientpostprocess","bis_fnc_vrcoursehelibasics1","bis_fnc_fps","bis_fnc_tridentclient","bis_fnc_diagmacrosmapsize","bis_fnc_vrcoursehelibasics2","bis_fnc_markerpath","bis_fnc_modulemptypeseize","bis_fnc_rotatevector2d","bis_fnc_vrcourseballistics1","bis_fnc_removeallscriptedeventhandlers","bis_fnc_addscore","bis_fnc_livefeedsettarget","ac_fnc_changemenu","bis_fnc_vrcoursehelibasics3","bis_fnc_forcecuratorinterface","bis_fnc_orbataddgroupoverlay","bis_fnc_respawnseagull","bis_fnc_taskstate","bis_fnc_vrcourseballistics2","bis_fnc_compatibleitems","bis_fnc_vectormultiply","ac_compile","bis_fnc_effectfiredsmokelauncher_boat","bis_fnc_kbcreatedummy","bis_fnc_infotext","bis_fnc_vrcourseballistics3","bis_fnc_invslots","bis_fnc_dbclassset","bis_fnc_recompile","bis_fnc_isbuildingenterable","bis_fnc_initmodules_events","bis_fnc_orbatgetgroupparams","bis_fnc_colorrgbtohtml","bis_fnc_objectheight","bis_fnc_drawao","bis_fnc_vrcourseballistics4","bis_fnc_randomnum","bis_uncblur","bis_fnc_areequal","bis_fnc_crossproduct","bis_fnc_arrayinsert","bis_fnc_unitplay","bis_fnc_returnchildren","bis_fnc_sidetype","bis_fnc_revivekeys","bis_fnc_feedback_fatigueblur","bis_fnc_initmodules","bis_fnc_moduleobjective","bis_fnc_gridtopos","bis_fnc_returngroupcomposition","bis_fnc_moduleshowhide","bis_fnc_addscriptedeventhandler","bis_fnc_geometricmean","bis_fnc_deletevehiclecrew","bis_fnc_callscriptedeventhandler","bis_fnc_modulehealth","bis_fnc_weaponaddon","bis_fnc_findextreme","bis_fnc_spawn","bis_fnc_execremote","bis_fnc_transportservice","bis_suffblur","bis_fnc_preload_init","bis_fnc_modulecuratoraddeditingarea","bis_fnc_genericsentenceinit","bis_fnc_radiosetchannel","bis_fnc_missionconversationslocal","bis_fnc_taskdestination","bis_fnc_call","bis_fnc_diagfindmissingauthors","bis_fnc_respawnmenuposition","bis_fnc_advhint","bis_fnc_exportcfgpatches","bis_fnc_basevehicle","bis_fnc_exportgroupformations","bis_fnc_paramcountdown","bis_fnc_mp_packet","bis_fnc_objectvar","bis_fnc_tasksetcurrent","bis_fnc_findoverwatch","bis_fnc_effectfiredsmokelauncher","bis_fnc_respawnwave","bis_fnc_settasklocal","bis_fnc_curatorchallengespawnlightning","bis_fnc_ambientblacklist","bis_fnc_paramtimeacceleration","bis_fnc_variablespaceadd","bis_fnc_initmodules_sites","bis_fnc_destroycity","bis_fnc_arrayshift","bis_fnc_hatchclose","bis_fnc_deleteinventory","bis_fnc_modulesector","bis_fnc_invadd","bis_fnc_supplydropservice","bis_fnc_modulestrategicmapinit","bis_fnc_modulediary","bis_fnc_kbpriority","bis_fnc_forceend","bis_fnc_moduledate","bis_fnc_vehicleroles","bis_fnc_missionflow_fsm","ac_god_v_veh","bis_fnc_taskexists","bis_fnc_loadentry","bis_fnc_credits_moviesupport","bis_fnc_bloodeffect","bis_fnc_modulespawnaipoint","bis_fnc_drawrespawnpositions","bis_fnc_modulecovermap","bis_fnc_vrdrawgrid","bis_fnc_aligntabs","bis_fnc_log","bis_fnc_modulezonerestriction","bis_fnc_modulecuratorsetcostsside","bis_fnc_removefrompairs","bis_fnc_vrcoursecommandingvehicles1","bis_fnc_orbattooltip","bis_fnc_feedback_allowpp","bis_fnc_modulehvtobjectivesinstance","bis_fnc_spawnvehicle","bis_fnc_feedbackmain_fsm","bis_fnc_garage","bis_fnc_setheight","bis_fnc_strategicmapmousebuttonclick","bis_fnc_modulehandle","bis_fnc_effectkilledairdestruction","bis_fnc_removenestedelement","bis_fnc_moduleobjectivefind","bis_fnc_vrcoursecommandingvehicles2","bis_fnc_getvirtualweaponcargo","bis_fnc_findsafepos","bis_fnc_taskhandler","bis_fnc_isposblacklisted","bis_fnc_modulespawnaisectortactic","bis_blendcoloralpha","bis_fnc_modulecurator","bis_fnc_subselect","bis_fnc_playmusic","bis_fnc_vrcoursecommandingvehicles3","bis_fnc_diagpreviewcycle","bis_fnc_scenesetposformation","bis_fnc_modulehint","bis_fnc_advhintcall","bis_fnc_respawnside","bis_fnc_modulefdcpin","bis_fnc_reviveinit","bis_fnc_setcuratorcamera","ac_fnc_checkvars","bis_fnc_modulefdskeetdestruction","bis_fnc_objectside","bis_fnc_modulerank","bis_fnc_modulemptypegroundsupportbase","bis_fnc_strategicmapanimate","bis_fnc_setservervariable","bis_fnc_ambientanimgetparams","bis_fnc_enablesaving","bis_fnc_drawcuratorrespawnmarkers","bis_fnc_displaycolorset","bis_fnc_initmodules_curator","bis_fnc_modulepositioning","bis_fnc_modulerespawninventory","bis_fnc_ambientboats","bis_fnc_relativedirto","bis_fnc_modulenametags","bis_fnc_listplayers","bis_fnc_modulefdcpclear","bis_fnc_radiosettrack","bis_fnc_kbtelllocal","bis_fnc_moduletasksetdestination","bis_fnc_titletext","bis_fnc_onend","bis_fnc_islocalized","bis_fnc_groupindicator","bis_fnc_singlemissionname","bis_fnc_dirteffect","bis_fnc_baseweapon","ac_fnc_getadmins","bis_fnc_getrespawnpositions","bis_fnc_moduleradiochannelcreate","bis_fnc_basictask","ac_fnc_consoleexec","bis_fnc_dbclassindex","bis_fnc_versioninfo","bis_fnc_distance2d","bis_fnc_modulettstatsclear","bis_fnc_exportcfghints","bis_fnc_diagkeylayout","bis_fnc_ctrltextheight","bis_fnc_orbatopen","bis_fnc_exportmaptobitxt","bis_fnc_moduleeffectsplankton","bis_fnc_finishcuratorchallenge","bis_fnc_timetostring","bis_fnc_modulehq","bis_fnc_isdemo","bis_fnc_feedback_damagepp","bis_fnc_vrcourseweaponhandlinga1","bis_fnc_lowestnum","bis_fnc_guibackground","bis_fnc_getturrets","bis_fnc_functionmeta","bis_fnc_taskreal","bis_fnc_createmenu","bis_fnc_cargoturretindex","bis_fnc_saveinventory","bis_fnc_initintelobject","bis_fnc_dbclassreturn","bis_oldlifestate","bis_fnc_3dmarkers","bis_fnc_worldarea","bis_fnc_aan","bis_fnc_vrcourseweaponhandlinga2","bis_fnc_noflyzonescreate","bis_fnc_boundingcircle","bis_fnc_damagechanged","bis_fnc_effectfiredrifle","bis_fnc_kbskip","bis_pp_burnparams","bis_fnc_moduletasksetstate","bis_fnc_addrespawnposition","bis_fnc_objectinventoryanimatedclose","bis_fnc_vrcourseweaponhandlinga3","bis_fnc_drawminefields","bis_fnc_getpitchbank","bis_fnc_arefriendly","bis_fnc_vrcourselaunchers1","bis_fnc_exportcfgweapons","bis_teamswitched","bis_fnc_advhintarg","bis_fnc_vrspawnselector","bis_fnc_itemtype","bis_fnc_initexpo","bis_fnc_unitplaysimple","bis_fnc_initvehiclecrew","bis_fnc_vrcourselaunchers2","bis_fnc_markerparams","ac_fnc_update","bis_fnc_3denmissionpreview","bis_fnc_exp_camp_manager","bis_fnc_getarea","bis_fnc_3dencontrolshint","bis_fnc_exp_camp_manager_getstate","bis_taskenhancements_enable","bis_fnc_initlistnboxsorting","bis_fnc_exporteditorpreviews","bis_fnc_initworldscene","bis_fnc_highlightcontrol","bis_fnc_exp_camp_checkpoint","ac_fnc_handletextchat","bis_fnc_reviveawardkill","bis_fnc_modulesupportsinitprovidervirtual","bis_fnc_paramreviveunconsciousstatemode","bis_fnc_exp_camp_playsubtitles","bis_fnc_3dengrid","bis_fnc_initammobox","bis_fnc_exp_camp_lobby_loop","bis_fnc_tasktypeicon","bis_fnc_paramrevivemedicspeedmultiplier","bis_fnc_dataterminalcolor","bis_fnc_exp_camp_lobby_uimissioncountdown","bis_fnc_showrespawnmenupositionmap","bis_fnc_tasksettype","bis_fnc_paramreviverequireditemsfakconsumed","bis_fnc_reviveonstatejip","bis_fnc_exp_camp_playtimelinevideo","bis_fnc_isthrowable","bis_fnc_egspectatordraw3d","bis_fnc_3denmoduledescription","bis_fnc_exp_camp_guidedprojectile","bis_fnc_showrespawnmenuinventorylimitrefresh","bis_fnc_showrespawnmenupositionname","bis_fnc_tasktype","bis_fnc_reviveallowed","bis_fnc_getobjectbbd","bis_fnc_exp_camp_lobby_updateplayers","ac_fnc_inallowedfunctions","bis_fnc_twowingdoortwohandleclose","bis_fnc_twowingdoornohandleclose","bis_fnc_egspectatorgetunitstodraw","bis_fnc_showrespawnmenuheader","bis_fnc_showrespawnmenuinventorymetadata","bis_fnc_paramreviveduration","bis_fnc_exp_camp_lobby_serverupdate","bis_fnc_exp_camp_lobby_intro","bis_fnc_exp_camp_lobby_missioncountdown","bis_fnc_showrespawnmenupositionmapdraw","bis_fnc_deletecounter","bis_fnc_exp_camp_setcinematicmode","bis_fnc_3deninterface","bis_fnc_showwelcomescreen","bis_fnc_groupfromnetid","bis_fnc_3dentoolbar","bis_fnc_exp_camp_initcharacter","bis_fnc_showrespawnmenupositionmetadata","bis_fnc_createsimpleobject","bis_fnc_exp_camp_lobby_uiprogressmanager","bis_fnc_sideisenemy","bis_fnc_modulegrenade","bis_fnc_paramreviverequireditems","bis_fnc_holdactionremove","bis_fnc_3denflashlight","bis_fnc_showrespawnmenuposition","bis_fnc_decodeflags","bis_fnc_modulesiteinit","bis_fnc_showrespawnmenupositionmaphandle","bis_fnc_showrespawnmenuinventorylimit","bis_fnc_3denexportterrainbuilder","bis_fnc_3dendiagcreatelist","bis_fnc_reviveonforcingrespawn","bis_fnc_lerp","bis_fnc_exp_camp_replacevehicles","bis_fnc_showrespawnmenuinventorylist","bis_fnc_egspectatorcameratick","bis_fnc_twowingdoortwohandleopen","bis_fnc_findallnestedelements","bis_fnc_3dentutorial","bis_fnc_reviveonplayerhandleheal","bis_fnc_getvehiclecustomization","bis_fnc_areequalnotnil","bis_fnc_disablerevive","bis_fnc_3denlistlocations","bis_fnc_showrespawnmenudisableitem","bis_fnc_egobjectivevisualizer","bis_fnc_showsubtitle","bis_fnc_egspectatorcameraresettarget","bis_fnc_3dendiagmousecontrol","bis_fnc_3denshowmessage","bis_fnc_exp_camp_lobby_ctrlsetcolor","bis_fnc_exp_camp_lobby_serverping","bis_fnc_diagmacroseditorpreview","bis_fnc_revivedamagereset","bis_fnc_showrespawnmenupositionrefresh","bis_fnc_showrespawnmenuinventorylimitrespawn","bis_fnc_showrespawnmenupositionlist","ac_fnc_logscript","bis_fnc_getcfg","bis_fnc_exp_camp_manager_triggerevent","bis_fnc_showrespawnmenuinventorydetails","bis_fnc_netid","bis_fnc_exp_camp_hasmissionstarted","bis_fnc_3denstatusbar","bis_fnc_exp_camp_lobby_findhost","bis_fnc_egspectatorcamerapreparetarget","bis_fnc_exp_camp_lobby_getplayersquadname","bis_fnc_exp_camp_setskill","bis_fnc_showrespawnmenuinventoryitems","bis_fnc_hextorgb","bis_fnc_exp_camp_balancegroup","bis_fnc_exp_camp_lobby_onload","bis_fnc_exp_camp_lobby_uimissionmanager","bis_fnc_paramreviveforcerespawnduration","bis_fnc_sidenameunlocalized","bis_fnc_reviveisvalid","bis_fnc_dataterminalanimate","bis_fnc_3denreviverequireditems","bis_fnc_egspectator","bis_fnc_3denexportattributes","bis_fnc_exp_camp_lobby_go","bis_fnc_exp_camp_lobby_updateplayerstatus","bis_fnc_exp_camp_lobby_structuredtext","bis_fnc_paramreviverequiredtrait","bis_fnc_revivedamagerecalc","bis_fnc_adjustsimpleobject","bis_fnc_showrespawnmenudisableitemcheck","bis_fnc_3denrevivemode","bis_fnc_exp_camp_lobby_updateintel","bis_fnc_diagmacrossimpleobject","bis_fnc_reviveonstate","bis_fnc_reviveonplayerhandledamage","bis_fnc_paramrevivemode","bis_fnc_exp_camp_dynamicaiskill","bis_fnc_exp_camp_lobby","bis_fnc_exp_camp_lobby_uioverlaymanager","bis_fnc_3dendrawlocations","bis_fnc_showrespawnmenudisableitemdraw","bis_fnc_exp_camp_sitrep","bis_fnc_exp_camp_lobby_clearvars","bis_fnc_exp_camp_lobby_launch","bis_taskenhancements_3d","bis_fnc_sunrisesunsettime","bis_fnc_twowingdoornohandleopen","bis_fnc_3denintel","bis_fnc_initslidervalue","bis_fnc_exp_camp_lobby_onunload","bis_fnc_objectfromnetid","bis_fnc_modulesupportsinitrequester","bis_fnc_3denentitymenu","bis_fnc_tasksetalwaysvisible","bis_fnc_getangledelta","bis_fnc_egspectatorcamera","bis_fnc_showrespawnmenuinventoryloadout","bis_fnc_revivegetactionicon","bis_fnc_getnetmode","bis_fnc_paramrevivebleedoutduration","bis_fnc_3dencamera","bis_fnc_errorparamstype","bis_fnc_reviveget3dicons","bis_fnc_egspectatorcamerasettarget","bis_fnc_exp_camp_iff","bis_fnc_exp_camp_playerchecklist","bis_fnc_simpleobjectdata","bis_fnc_modulesupportsinitprovider","bis_fnc_3dennotification","bis_fnc_holdactionadd","bis_fnc_reviveonbeingrevived","bis_fnc_exp_camp_manager_onplayerregistered","bis_fnc_revivedebug","bis_fnc_exportconfighierarchy","bis_fnc_exp_camp_getplayersgroup","bis_fnc_3denexportoldsqm","ac_fnc_adminrequest","bis_fnc_exp_camp_initclasses","ac_fnc_log","bis_fnc_encodeflags","bis_fnc_sideisfriendly","bis_fnc_showrespawnmenuinventory","bis_fnc_egspectatordraw2d","bis_fnc_3dendiagfonts","bis_fnc_controlconfigs","bis_fnc_garage3den","bis_fnc_exp_camp_manager_setstate","bis_fnc_exp_camp_lobby_playmissionvideo","bis_fnc_reviveawarddeath","NULL","ac_config_output","ac_fnc_addadmin","ac_fnc_addbadfile","ac_fnc_addbadword","ac_fnc_adddisplay","ac_fnc_addmenustolist","ac_fnc_addvariable","ac_fnc_addvehicle","ac_fnc_addwaypoint","ac_fnc_addweapon","ac_fnc_allgamedisplays","ac_fnc_armory","ac_fnc_ban","ac_fnc_bulletsmode","ac_fnc_cfgmenuopen","ac_fnc_changeobjectslist","ac_fnc_copyalllogs","ac_fnc_copyselectedlog","ac_fnc_debugmessage","ac_fnc_deleteallobjects","ac_fnc_deleteselobject","ac_fnc_deletewaypoint","ac_fnc_editdialog","ac_fnc_execglobal","ac_fnc_execlocal","ac_fnc_execserver","ac_fnc_filldisplayslist","ac_fnc_filllists","ac_fnc_fillplayerslist","ac_fnc_fillvariableslist","ac_fnc_fillvehicleslist","ac_fnc_fillweaponslist","ac_fnc_filterhacklogs","ac_fnc_freecamera","ac_fnc_getfromconfig","ac_fnc_getriskcolor","ac_fnc_glue","ac_fnc_godmode","ac_fnc_heal","ac_fnc_kick","ac_fnc_kill","ac_fnc_lbdeleteat","ac_fnc_lbtoarray","ac_fnc_loadadminmenu","ac_fnc_loadconsolemenu","ac_fnc_loadfromconfig","ac_fnc_loadlogsmenu","ac_fnc_loadmapmenu","ac_fnc_loadobjectsmenu","ac_fnc_loadspectatemenu","ac_fnc_logcfg","ac_fnc_mapteleport","ac_fnc_menucreateobject","ac_fnc_newcfgarray","ac_fnc_outputconfig","ac_fnc_refreshconsolemenu","ac_fnc_refreshmapmenu","ac_fnc_refreshobjectsmenu","ac_fnc_refuelallobjects","ac_fnc_refuelselobject","ac_fnc_removeallbadfiles","ac_fnc_removeallvariables","ac_fnc_removeallvehicles","ac_fnc_removeallweapons","ac_fnc_removefromconfig","ac_fnc_removegear","ac_fnc_removevariable","ac_fnc_repair","ac_fnc_repairallobjects","ac_fnc_repairselobject","ac_fnc_settoconfig","ac_fnc_showlogdescription","ac_fnc_spectate","ac_fnc_spectateinlist","ac_fnc_spectateoff","ac_fnc_teleportonobject","ac_fnc_teleportplayer","ac_fnc_teleporttoplayer","ac_fnc_vehiclegodmode","ac_fnc_waypointteleport","ac_god","ac_god_v","ac_old_display_id","bis_dynamictext_spawn_6","","ac_fnc_addallowedtag","ac_fnc_addforbiddentag","ac_fnc_addforbiddenvariable","ac_fnc_loadcurrentcfgarray"};
    };
};

allowedDisplays[] = {0,-1,4,5,6,7,8,12,17,18,24,70,46,49,50,51,52,53,54,55,57,58,63,72,129,131,148,151,154,174,59,162,999,313};

allowed_Weapons[] = {};

allowedVehicles[] = {};

};
