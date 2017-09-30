保存Tmux会话

Tmux 会话功能它有一点不好，如果机器重启，那么 Tmux 会话就消失了，包括打开的各个窗口、窗格布局、以及其中跑的程序等所有东东。Tmux Resurrect 和 Tmux Continuum 这两个 Tmux 插件正是因此而生的。
Tmux Resurrect

    Tmux Resurrect 能够备份Tmux会话的各种细节，包括所有会话、窗口、窗格以及它们的顺序，每个窗格的当前工作目录，精确的窗格布局，活动及替代的会话和窗口，窗口聚焦，活动窗格，窗格中运行的程序等等，非常贴心。

	安装 Tmux Resurrect：

	% mkdir ~/.tmux
	% cd ~/.tmux
	% git clone https://github.com/tmux-plugins/tmux-resurrect.git

	官方推荐通过 Tmux 插件管理器来安装，如果你需要安装多个插件，不妨自行尝试。然后在~/.tmux.conf 中添加下列内容：

	run-shell ~/.tmux/tmux-resurrect/resurrect.tmux

	保存后，重载 Tmux 配置：

	% tmux source-file ~/.tmux.conf

	现在，要保存 Tmux 会话，我们只要按 前缀键 + Ctrl-s 就可以了。此时，Tmux 状态栏会显示“Saving …”字样，完毕后会提示 Tmux 环境已保存。

	Tmux Resurrect 会将 Tmux 会话的详细信息以文本文件形式保存到 ~/.tmux/resurrect 目录。

	还原则按 前缀键 + Ctrl-r 即可。
	Tmux Continuum（推荐）

	    Tmux Resurrect 工作很好，只是备份和还原都是手动完成。而 Tmux Continuum 更进一步，它将 Tmux 会话的保存及还原自动化，定时备份，然后在 Tmux 启动时还原。

		Tmux Continuum 安装：

		% cd ~/.tmux
		% git clone https://github.com/tmux-plugins/tmux-continuum.git

		接着，将以下内容添加到 ~/.tmux.conf：

		run-shell ~/.tmux/tmux-continuum/continuum.tmux

		Tmux Continuum 默认每隔 15 分钟备份一次，如果你觉得频率过高，可以设置为 1 小时一次：

		set -g @continuum-save-interval '60'

		同样，需要重载 Tmux 配置 tmux source-file ~/.tmux.conf。

		需要注意的是，使用这两个 Tmux 插件要求 Tmux 是 1.9 及以上版本，如果不符合要求，赶紧升级吧，相信你会觉得这会非常值得。
