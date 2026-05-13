# LuckPerms Rank Komutları

Konsolda sırayla çalıştır:

```txt
lp creategroup default
lp creategroup citizen
lp creategroup merchant
lp creategroup noble
lp creategroup mayor
lp creategroup king
lp creategroup staff
lp creategroup admin

lp group default meta setprefix "&7Gezgin &8| &7"
lp group citizen meta setprefix "&aVatandaş &8| &a"
lp group merchant meta setprefix "&6Tüccar &8| &6"
lp group noble meta setprefix "&dSoylu &8| &d"
lp group mayor meta setprefix "&bBaşkan &8| &b"
lp group king meta setprefix "&cKral &8| &c"
lp group staff meta setprefix "&9Staff &8| &9"
lp group admin meta setprefix "&4Admin &8| &4"

lp group default permission set essentials.spawn true
lp group default permission set essentials.home true
lp group default permission set essentials.sethome true
lp group default permission set essentials.tpa true
lp group default permission set towny.command.towny true
lp group default permission set towny.command.town.new true
lp group default permission set towny.command.plot.claim true
lp group citizen permission set essentials.sethome.multiple.citizen true
lp group merchant permission set economyshopgui.sellall true
lp group mayor permission set towny.command.town.rank true
lp group staff permission set coreprotect.inspect true
lp group admin permission set '*' true
```