/**
	Header file used by CPAProxy to start Tor.
 */
int tor_main(int argc, const char *argv[]);
void tor_reload(void);

const char tor_git_revision[] = "5030edfb534245ed3f7e6b476f38a706247f3cb8";
