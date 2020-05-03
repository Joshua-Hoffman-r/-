#!/bin/bash #~#
# MD5: 69f25568504c9317d1a992868d3a81ee

Introspect () {

Hard=$(awk 'NR==2 {print $3}' "$0" | cut -c 1-32 ) #~#
Soft=$(awk '/'#~#'/ {gsub(/#~#/, "");print $0}' "$0" | md5sum | cut -c 1-32) #~#
Time=$(date +'%H:%M_%m-%d') #~#
#~#
	Retrospect () { #~#
	#~#
		Beez () { #~#
		#~#
			Attenance () { #~#
			#~#
			Call[0]=Zero     Roll[0]="${0%.*}" #~#
			Call[1]=Aurthor  Roll[1]='Joshua Ray Hoffman' #~#
			Call[2]=Tittled  Roll[2]='Modulation Project' #~#
			Call[3]=Contact  Roll[3]='joshua.hoffman.ray@protonmail.com' #~#
			Call[4]=Columns  Roll[4]='1' #~#
			Call[5]=Brick_1  Roll[5]='-' #~#
			Call[6]=Brick_2  Roll[6]='=' #~#
			Call[7]=Brick_3  Roll[7]='|' #~#
			Call[8]=Crown_1  Roll[8]='/' #~#
			Call[9]=Crown_2  Roll[9]=\'\\\' #~#
			eval Seat[$((A++))]=\${0..9}  #~#
			eval declare -Ag List[\${Call[{0..9}]}]=\${Roll[$((B++))]} #~#
			eval declare -Ag Name[\${Call[{0..9}]}]=\${Seat[$((C++))]:=\${Roll[$((C-1))]}} #~#
			#~#
			} #~#
			#~#
		Attenance $@ #~#
		#~#
		Columns=2  #~#
		Pilar=$(echo ${Roll[@]} | tr ' ' "\n" | awk '{print gsub(//, 1)}' | sort -n | tail -n1 ) #~#
		Brick=$(seq 1 $((Pilar*Columns)) | tr -d '[:digit:]' | tr '\n' "${Name[Brick_1]}") #~#
		Rocks=$(echo $Brick | tr "${Name[Brick_1]}" "${Name[Brick_2]}") #~#
		Space="#$(echo "    $Rocks   " | tr "${Name[Brick_2]}",[:blank:] " ") " #~#
		Cloud="$(echo "${Space}" | tr [:blank:] "${Name[Brick_1]}")" #~#
		Halls="${Name[Brick_3]}$(echo "$Rocks" | tr "${Name[Brick_2]}" ' ')${Name[Brick_3]}" #~#
		Heads="${Name[Crown_1]}${Rocks}${Name[Crown_2]}" #~#
		Tails="$(echo $Heads | rev)" #~#
		#~#
			for Signs in "${Roll[@]:0:4}"; do #~#
		#~#
				for Neon in Cloud Heads Tails; do #~#
				eval Glow=\$"$Neon" #~#
				Front="$(echo "$Glow" | cut -c 1-$(($((${#Glow}/2))-$((${#Signs}/2)))) )" #~#
				Backs="$(echo "$Glow" | cut -c $((${#Front}+${#Signs}+1))-${#Glow} )" #~#
				eval export Final_${Neon}_$((D++))="${Front}"'${Signs/'.bash'//}'"${Backs}" #~#
				done  #~#
					#~#
			done  #~#
			#~#
			#~#
			for Doors in ${!Expres[@]}; do  #~#
			#~#
			Middl=$(($(($((${#Rocks}+2))/${Name[Columns]}/2))-$((${#Expres[$Doors]}+${#String[$Doors]})))) #~#
			Padds="$(seq 1 $Pillar | tr -d [:digit:] | tr '\n' ' ')" #~#
			Ends="$(echo "$Halls" | cut -c 1-$(($((${#Halls}/4)))) )" #~#
			Begin="$(echo "$Ends" | rev )" #~#
			Elbow="$( seq 1 $Middl | tr -d [:digit:] | tr '\n' ' ' )" #~#
			Row="${String[$Doors]}"${Elbow}"${Expres[$Doors]}${Padds}${Row}" #~#
			#~#q
				if ! (( $((Doors++)) % ${Name[Columns]} )); then #~#
				export Table=${Table}"${Ends}${Row}${Begin}\\n" #~#
				unset Row #~#
				fi #~#
			#~#
			done #~#
			#~#
		House="${Final_Heads_1%.*}\ \\n$Halls \\n${Table}$Halls\\n${Final_Tails_5}" #~#
		#~#
			for a in $(eval echo {0..$(echo -en $House | wc -l)}); do #~#
			export Sides="# \\n${Sides}" #~#
			done #~#
			#~#
		#~#
		export File="$0"_$(date +'%h-%m').bash #~#
		echo -e "#!/bin/bash" >> $File #~#
		echo -e "$Final_Cloud_6#\\n$Space#" >> $File #~#
		paste <(echo -e "$Sides") <(echo -ne "${House}") <(echo -e "$Sides") | column -s $'\t' -t >> $File #~#
		echo -e "$Space#\\n$Final_Cloud_9#" >> $File #~#
		awk /-~0~-/,/-~1~-/ $0 | awk '!/#-~0~-|#-~1~-/ {print $0}' >> $File #~#
		echo "$Checked" >> $File #~#q
		#~#
		} #~#
		#~#
		Beez #~#
		#~#
	Verfied=$( awk '!/'#~#'/ {gsub(/'$Hard'/, "");print $0}' $0 | md5sum | cut -c 1-32 ) #~#
	export Checked=$( awk '!/'#~#'/ {gsub(/'$Soft'/, "'$Verfied'"); print $0}' "$0" ) #~#
	#~#
		if [[ $(awk 'NR==17 {print $3}' "$0" ) != $Verfied ]]; then #~#
		export File="$0"_$(date +'%h-%m').bash #~#
		fi #~#
		#~#
	#~#
	} #~#
	#~#
	if [[ $Hard = $Soft ]]; then #~#
	Retrospect #~#
	else #~#
	exit 2 #~#
	fi #~#
	#~#
File="$0"_$(date +'%h-%m').bash
Over=$(awk 'NR==17 {print substr($3 ,1 ,32)}' "${File:=$0}" )
Easy=$(awk '{sub(/'$Over'/, ""); print $0}' "${File:=$0}" | md5sum | cut -c 1-32 )

	if [[ $Over = $Easy ]]; then
	${Introspect_return:=return} 0
	fi

return 1

}

String[0]="User"  	   Expres[0]="$(whoami)"
String[1]="Time"  	   Expres[1]="$(date +'%H:%M:%S')"
String[2]="Dated" 	   Expres[2]="$(date +'%m/%d/%y')"
String[3]="Byte"  	   Expres[3]="$(wc -c $0 | awk '{print $1}')"
String[4]="Lines" 	   Expres[4]="$(wc -l $0 | awk '{print $1}')"
String[5]="Word"  	   Expres[5]="$(wc -w $0 | awk '{print $1}')"
String[6]="_"  Expres[6]="$(echo "ea7c295a46918a9b313a9deeec84c187 _")"

Attenance () {

Call[0]=Zero     Roll[0]="${0%.*}"
Call[1]=Aurthor  Roll[1]='Joshua Ray Hoffman'
Call[2]=Tittled  Roll[2]='Modulation Project'
Call[3]=Contact  Roll[3]='joshua.hoffman.ray@protonmail.com'
Call[4]=Columns  Roll[4]='1'
Call[5]=Brick_1  Roll[5]='-'
Call[6]=Brick_2  Roll[6]='='
Call[7]=Brick_3  Roll[7]='|'
Call[8]=Crown_1  Roll[8]='/'
Call[9]=Crown_2  Roll[9]=\'\\\'

eval Seat[$((A++))]=\${0..9}
eval declare -Ag List[\${Call[{0..9}]}]=\${Roll[$((B++))]}
eval declare -Ag Name[\${Call[{0..9}]}]=\${Seat[$((C++))]:=\${Roll[$((C-1))]}}

}


Count () {

declare -ag Zero=( {0..9} {a..z} {A..Z} + - / )
eval declare -Ag One[{00..64}]=\${Zero[$((Two++))]} One[\${Zero[$((Three++))]}]={00..64}
unset Two Three

	for Three in $@; do
	Five=$Three

		if [[ $(echo $Three | grep -c :) = 0 ]]; then
		eval declare -a Four[$((Two++))]=\${Three:{0..63}:1}
		Five=$(echo ${Four[@]} | tr ' ' ':') && Two=:
		fi

		for Six in $(echo $Five | tr ':' ' '); do
		declare -ag Seven[$((Eight++))]=${One[$Six]}${Two}
		done

	declare -Ag Nine[$((Ten++))]=${Seven[@]:-$Eight}
	unset Four Eight
	done

}


Color () {

declare -Ag Canvis Color
Portfolio=( "$(echo "$(dirname "$(realpath $0)")/$0")" $@ )

	for Item in ${Portfolio[@]}; do

	Colors=(
	[1]="$(echo ${Item%/*})"
	[2]="$(cat $Item)"
	[3]="$(wc -c $Item)"
	[4]="$(wc -w $Item)"
	[5]="$(wc -l $Item)" )

	declare -Ag Color[{1..5}]=$(echo ${Color[$((A++))]} | sha256sum | awk '{print substr($1, 1, 32)}' )

		for Rain in ${Color[@]}; do
		export Shade=${Rain}${Shade}
		export Purple=$((Purple+${#Rain}))
		done

	Blend=( $( seq 1 $Purple | sort -R ) )

		for Stroke in ${Blend[@]} 0; do
		Canvis[${Stroke}]=${Shade:${Stroke}:1}
		unset Hue
		done

	done

}

Introspect


#    _________________________________________________________________________________________________
#   |* ___________________________________________GPL-3_Licence_____________________________________ *|  
#   | /                                                                                             \ |  
#   | |         This program is free software: you can redistribute it and/or modify                | |  
#   | |         it under the terms of the GNU General Public License as published by                | |  
#   | |         the Free Software Foundation, either version 3 of the License, or                   | |  
#   | |         (at your option) any later version.                                                 | |  
#   | |                                                                                             | |  
#   | |         This program is distributed in the hope that it will be useful,                     | |  
#   | |         but WITHOUT ANY WARRANTY; without even the implied warranty of                      | |  
#   | |         MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                       | |  
#   | |         GNU General Public License for more details.                                        | |  
#   | |                                                                                             | |  
#   | |         You should have received a copy of the GNU General Public License                   | |  
#   | |         along with this program.  If not, see <http://www.gnu.org/licenses/>.               | |  
#   | |                                                                                             | |  
#   | \_____________________________________________________________________________________________/ |  
#   |* ______________________________________Module_Test_|_5/2/2020_________________________________ *|  
#   | /                                                                                             \ |  
#   | |                                    Written by: Joshua Hoffman                               | |  
#   | |                                 joshua.hoffman.ray@protonmail.com                           | |  
#   | |                                                                                             | |  
#   | \________________________________________Modulation_Project___________________________________/ |  
#   |_________________________________________________________________________________________________|  
#
