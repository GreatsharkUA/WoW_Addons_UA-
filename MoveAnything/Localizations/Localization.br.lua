if GetLocale() ~= "ptBR" then
	return
end

local MOVANY = {
	ADD = "Adicionar",
	ADDNEW = "Adicionar novo",
	CLOSEGUIONESC = "Tecla Esc fecha a janela principal.",
	CMD_SYNTAX_DELETE = "Syntax: /movedelete ProfileName", -- Missing translation
	CMD_SYNTAX_EXPORT = "Syntax: /moveexport ProfileName", -- Missing translation
	CMD_SYNTAX_HIDE = "Syntax: /hide ProfileName", -- Missing translation
	CMD_SYNTAX_IMPORT = "Syntax: /moveimport ProfileName", -- Missing translation
	CMD_SYNTAX_MAFE = "Syntax: /mafe frameName", -- Missing translation
	CMD_SYNTAX_UNMOVE = "Syntax: /unmove frameName", -- Missing translation
	DELETE = "Excluir",
	DISABLED_DURING_COMBAT = "Desabilitado durante combate",
	DISERRORMES = "Ativa o quadro de mensagens de erro ligado/desligado.",
	DISERRORMESNO = "Desabilitar mensagens de erro.",
	DONSEARCHFRAMENAME = "Desabilita a busca dos nomes de quadros atuais",
	DONTSEARCH = "Não buscar nomes de quadros.",
	DONTSYNCINCOMBAT = "Alterna se MoveAnything sincronizará quadros pendentes quando deixar o combate.\n\nDesabilitar isto pode resultar na necessidade de quadros protegidos precisarem de sincronização manual quando sair de combate.",
	DONTSYNCINCOMBATNO = "Desabilitar sincronia quando sair de combate",
	ELEMENT_NOT_FOUND = "Objeto de interface não encontrado.",
	ELEMENT_NOT_FOUND_NAMED = "Objeto de interface não encontrado.",
	ERROR_FRAME_FAILED = "Um erro ocorreu enquanto sincronizava %s. Reiniciar o quadro e recarregar antes de modificá-lo novamente pode resolver o problema. Você pode desabilitar esta mensagem em \"opções\". Se o problema persistir, por favor reporte-o ao autor: %s %s %s",
	ERROR_MODULE_FAILED = "Um erro ocorreu enquanto ajustava %s para %s. Você pode desabilitar esta mensagem em \"opções\". Se o problema persistir, por favor reporte-o ao autor: %s %s %s",
	ERROR_NOT_A_TABLE = "\"%s\" não é um tipo suportado.",
	FE_FORCED_LOCK_POSITION_CONFIRM = "Travar posição forçada? Clique novamente em 5 segundos para confirmar.",
	FE_FORCED_LOCK_POSITION_TOOLTIP = "Overwrites the element's SetPoint method,\nreplacing it with an empty stub\n\nMay cause taint if the element is protected\nand the stub gets called during combat\n\nRequires a reload or relog after unchecking to\nrestore the original SetPoint method", -- Missing translation
	FE_GROUP_RESET_CONFIRM = "Reiniciar Grupo %i? Clique novamente em 5 segundos para confirmar.",
	FE_GROUPS_TOOLTIP = "Grupo %i",
	FE_UNREGISTER_ALL_EVENTS_CONFIRM = "Apagar o registro de todos os eventos? Clique novamente em 5 segundos para confirmar.",
	FE_UNREGISTER_ALL_EVENTS_TOOLTIP = "Unregisters any events that the frame is listening to,\nrendering the frame inert\n\nRe-enabling unregistered events will require a reload\nor relog after unchecking this checkbox", -- Missing translation
	FRAME_NO_FRAME_EDITOR = "Editores de quadros desabilitados para %s.",
	FRAME_ONLY_ONCE_OPENED = "Somente possível interagir com %s quando este for exibido.",
	FRAME_ONLY_WHEN_BANK_IS_OPEN = "Somente possível interagir com %s quando o banco estiver aberto.",
	FRAME_ONLY_WHEN_VOIDSTORAGE_IS_OPEN = "Somente possível interagir com %s quando o Cofre Etéreo estiver aberto.",
	FRAME_PROTECTED_DURING_COMBAT = "Não é possível interagir com %s durante combate.",
	FRAME_UNPOSITIONED = "%s não está posicionado no momento e não pode ser movido até que esteja.",
	FRAME_VISIBILITY_ONLY = "%s só pode ficar oculto.",
	HOOKALLOWED = "Toggles if MoveAnything will hook CreateFrame.\n\nRequires reload to take effect.", -- Missing translation
	HOOKALLOWEDNO = "Desabilitar a presilha de criação de quadros",
	LIST_HEADING_CATEGORY_AND_FRAMES = "Categorias e Quadros",
	LIST_HEADING_HIDE = "Ocultar",
	LIST_HEADING_MOVER = "Movedor",
	LIST_HEADING_SEARCH_RESULTS = "Resultado da busca: %i",
	NOMMWP = "Toggles Minimap mousewheel zoom on/off.\n\nRequires reload to take effect.", -- Missing translation
	NOMMWPNO = "Desabilitar zoom do Minimapa",
	NO_NAMED_FRAMES_FOUND = "Nenhum objeto encontrado com esse nome.",
	NUDGER1 = "Mostrar alerta com a janela principal",
	ONLY_ONCE_CREATED = "%s só pode ser modificado depois de ter sido criado.",
	OPTBAGS1 = "Toggles if MoveAnything will hook containers.\n\nThis should be checked if you use another addon to move your bags.", -- Missing translation
	OPTBAGSTOOLTIP = "Desabilitar presilha de compartimento de bolsas.",
	OPTIONTOOLTIP1 = "Enable to show the nudger with the main window\n\nBy default the Nudger is only shown when interacting with frames.", -- Missing translation
	OPTIONTOOLTIP2 = "Toggles display of tooltips on/off\n\nPressing Shift when mousing over elements will reverse tooltip display behavior.", -- Missing translation
	PLAYSOUND = "Reproduzir som",
	PLAYSOUNDS = "Alterna se MoveAnything deve reproduzir um som quando abrir ou fechar a janela principal.",
	PROFILE_ADD_TEXT = "Insira o nome do novo perfil.",
	PROFILE_ALREADY_EXISTS = "O perfil \"%s\" já existe.",
	PROFILE_CANT_DELETE_CURRENT_IN_COMBAT = "Não é possível excluir o perfil atual durante combate.",
	PROFILE_CANT_DELETE_DEFAULT = "O perfil padrão não pode ser excluído.",
	PROFILE_CURRENT = "Atual",
	PROFILE_DELETED = "Perfil excluído: %s",
	PROFILE_DELETE_TEXT = "Excluir perfil \"%s\"?",
	PROFILE_EXPORTED = "\"%s\" exportado para \"%s\"",
	PROFILE_IMPORTED = "\"%s\" foi importado para \"%s\"",
	PROFILE_RENAME_TEXT = "Insira novo nome para \"%s\"",
	PROFILE_RESET_CONFIRM = "MoveAnything: Reiniciar todos os quadros no perfil atual?",
	PROFILES = "Perfis",
	PROFILE_SAVE_AS_TEXT = "Insira o nome do novo perfil.",
	PROFILES_CANT_SWITCH_DURING_COMBAT = "Perfis não podem ser trocados durante combate.",
	PROFILE_UNKNOWN = "Perfil desconhecido: %s",
	RENAME = "Renomear",
	RESETALL1 = "Reset all\n\nReset MoveAnything to default settings. Deletes all frame settings, as well as the custom frame list", -- Missing translation
	RESET_ALL_CONFIRM = "MoveAnything: Reiniciar MoveAnything para o estado de instalação?\n\nAviso: isso excluirá todas as modificações e limpará a lista de quadros personalizados.",
	RESET_FRAME_CONFIRM = "Reiniciar %s? Selecione novamente em 5 segundos para confirmar.",
	RESETPROFILE1 = "Reset profile\n\nResets the profile, deleting all stored frame settings for this profile.", -- Missing translation
	RESETTING_FRAME = "Reiniciando %s",
	SAVE = "Salvar",
	SAVEAS = "Salvar como",
	SEARCH_TEXT = "Busca",
	SHOWTOOLTIPS = "Mostrar dicas",
	SQUARMAP = "Toggles square MiniMap on/off.\n\nHide \"Round Border\" in the \"Minimap\" category to get rid of the overlaying border.", -- Missing translation
	SQUARMAPNO = "Ativar Minimapa quadrado",
	UNSERIALIZE_FRAME_INVALID_FORMAT = "Formato inválido",
	UNSERIALIZE_FRAME_NAME_DIFFERS = "O nome do quadro importado difere do alvo importar",
	UNSERIALIZE_PROFILE_COMPLETED = "%i objeto(s) importado(s) para o perfil \"%s\"",
	UNSERIALIZE_PROFILE_NO_NAME = "Não foi possível localizar o nome do perfil",
	UNSUPPORTED_FRAME = "Quadro não suportado: %s",
	UNSUPPORTED_TYPE = "Tipo não suportado: %s"
}

_G.MOVANY = MOVANY
