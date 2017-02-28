// sup's configuration file
// need sup to be re-compiled for any change to be effective

/// un/comment flags below to remove functionalities
#define HASH 1
// #define DAEMON 1
// #define DEBUG 1

#ifndef FLAGSONLY

#define USER 1000
#define GROUP -1

#define SETUID 0
#define SETGID 0

#define CHROOT ""
#define CHRDIR ""

static struct rule_t rules[] = {
    // allow user to run these programs when found in path location
	{ USER, GROUP, "heads-init", "/usr/local/bin/heads-init", "c8f221303a2651b49cfea39486a2a76948f47efc616b663e687d8c02c51e883a" },
	{ USER, GROUP, "heads-update", "/usr/local/bin/heads-update", "714ca73cd02976323c5dccfd200f69f182a2998ee5485a0be53395b9e9013548" },

    { 0 },
};

#endif
