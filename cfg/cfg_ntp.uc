{%
function generate_ntp() {
	local ntp= {};

	uci_set_option(ntp, cfg.ntp, "enabled");
	uci_set_option(ntp, cfg.ntp, "enable_server");
	uci_set_option(ntp, cfg.ntp, "server");

	uci_render("system", { "ntp": ntp});
}

generate_ntp();
%}
