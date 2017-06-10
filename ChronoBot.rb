require 'discordrb'
bot = Discordrb::Bot.new token: 'MzIyODQ5NzYzNjcyMzI2MTQ2.DBykyg.qiSmVYZ6o-K2Ww2Z3V09NJIYDA4', client_id: 311272201783345153
bot = Discordrb::Commands::CommandBot.new token: 'MzIyODQ5NzYzNjcyMzI2MTQ2.DBykyg.qiSmVYZ6o-K2Ww2Z3V09NJIYDA4', client_id: 311272201783345153, prefix: '!c.'


#-------------------------10
bot.command :help do |event|
 help(event)
end
def help(event)
  event.respond '```
1.- !c.slap + tag de usuario para que Chrono abofetee al usuario elegido.
2.- !c.bitch (pretty self explanatory)
3.- !c.cm c mamo, c mamo el joven
4.- !c.ora para una "fucking jojos reference".
5.- !c.question + pregunta para que Chrono resuelva tu duda existencial.(Es un bot, solo responde SI o NO, no mamen)
6.- !c.dice + n caras de dado (2+)
7.- !c.ñium para desplegar el ñium
8.- !c.nd para desplegar Demn Niggu
9.- !c.hug + person (pretty self explanatory)x2
10.- !c.help para ver la lista de comandos
------------In progress-------------
11.- !c.duel + person (Duelo de vaqueros puto)
12.- !c.voice para escuchar unos buenos cumbiones```'
end

#1.--------------------
bot.command(:slap, max_args: 1, description: 'Violence', usage: 'command+person to slap') do |event, user|
  event.respond user + ' este men te dio un vergaso: ' + event.user.mention
end
#2.--------------------
bot.command :bitch do |event|
  event.respond 'http://gph.is/2c1J5Md'
end
#3.--------------------
bot.command :cm do |event|
  event.respond 'https://i.ytimg.com/vi/9nwMUgYDUZY/hqdefault.jpg'
end
#4.--------------------
bot.command :ora do |event|
  event.respond 'ORAORAORAORAORAORAORAORAORAORAORA'
end
#5.-------------------
bot.command(:question, min_args: 0, max_args: 1000, description: 'Generates a random number between 0 and 1, 0 and max or min and max.', usage: 'command+Existential Question') do |event, question|
  # The `if` statement returns one of multiple different things based on the condition. Its return value
  # is then returned from the block and sent to the channel
  min=1
  max=10
  n=rand(min.to_i..max.to_i)
  if(n==1)
    event.respond 'Negativo Pareja'
  end
  if(n==2)
    event.respond 'No se arma men' 
  end
  if(n==3)
    event.respond 'Nel puto'
  end
  if(n==4)
    event.respond 'NOPE'
    event.respond 'http://gph.is/2iPbqEh'
  end
  if(n==5)
    event.respond 'Simon ese'
  end
  if(n==6)
    event.respond 'Me vale verga'
    event.respodn 'http://gph.is/2d8ItFL'
  end
  if(n==7)
    event.respond 'NANIIIIIIIIIII'
    event.respond 'http://i1.kym-cdn.com/photos/images/original/001/176/898/7b7.jpg'
  end
  if(n==8)
    event.respond 'sisi awebo si'
  end
  if(n==9)
    event.respond 'Too obviously'
  end
  if(n==10)
    event.respond 'YEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAS!'
  end
end
#6.------------------
bot.command(:dice, min_args: 1, max_args: 1, description: 'Generates a random number between 0 and 1, 0 and max or min and max.', usage: 'command+Existential Question') do |event, max|
  # The `if` statement returns one of multiple different things based on the condition. Its return value
  # is then returned from the block and sent to the channel
  if (max.to_i<2)
    event.respond 'Numero mayor a 2 mamon'
  elsif (max.to_i>1000)
    event.respond 'Se mamo joven'
  else
    min=1
    n=rand(min.to_i..max.to_i)
    event.respond n
  end
end
#7.------------------
bot.command :ñium do |event|
  event.respond 'ñiiiiiiiiiiiiiiiiiiiiiiiiiiuuuuuuuuuuuuuuuuuuuuuuuummmmmmm'
  event.respond 'http://gph.is/2cEBdzF'
end
#8.------------------
bot.command :dn do |event|
  event.respond 'http://gph.is/1LlW86m'
end
#9.------------------
bot.command(:hug, max_args: 1, description: 'Violence', usage: 'command+person to slap') do |event, user|
  event.respond user + ' ewe, alguien te envio un abrazo'
  event.respond 'http://gph.is/11Sbz0a'
end
#11.------------------
bot.command :duel do |event|
  event.respond 'Esta en progreso puñetas'
end
#12.------------------
bot.command :voice do |event|
  event.respond 'Aun no puedes esuchar mi dulce voz puto'
end
#-----------------Run-------------------
bot.run 