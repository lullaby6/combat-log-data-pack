# Combat Log

Prevent players disconnect in combat

Version: `1.21.X`

## Commands

Settings:

```mcfunction
/function combat_log:settings
```

Change combat time (20 ticks = 1 second):

```mcfunction
/scoreboard players set time combat_log.settings <ticks>
```

Disable:

```mcfunction
/datapack disable "file/combat-log.zip"
```

Enable:

```mcfunction
/datapack enable "file/combat-log.zip"
```

## License

MIT