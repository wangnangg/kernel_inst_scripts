#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
 .name = KBUILD_MODNAME,
 .init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
 .exit = cleanup_module,
#endif
 .arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0xfceff7dc, "module_layout" },
	{ 0x374a690c, "device_create" },
	{ 0x20e01bc9, "__class_create" },
	{ 0xe9b1a2fa, "cdev_add" },
	{ 0xd7f78419, "cdev_init" },
	{ 0xb72397d5, "printk" },
	{ 0xd8e484f0, "register_chrdev_region" },
	{ 0xb8857caf, "class_destroy" },
	{ 0xf53ed33d, "device_destroy" },
	{ 0x7485e15e, "unregister_chrdev_region" },
	{ 0xf67ec283, "cdev_del" },
	{ 0xb4390f9a, "mcount" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "6A15017E02925DFF340D4A9");
