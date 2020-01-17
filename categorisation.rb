# encoding: ISO-8859-1

require "csv"

RULES_RASHODI = {
	'Gotovina' => [
		/^Isplata got. ATM./,
		/Šalter isplata/
	],
	'Hrana i kucne potrepstine' => [
		/Kupovina VISA karticom - MERCATOR\b/,
		/GENELEC P\.J\. SARAJEVO/,
		/BINGO\b/,
		/DM DROGERIE/,
		/LUSH DOO/,
		/FIS DOO VITEZ/,
		/KONZUM\b/,
		/DOLFARM DOO/,
		/SUPERMARKET AS/,
		/BIORGANIC\b/,
		/VINDIJA DOO/,
		/HEALTH MOVERS DOO/,
		/INTERSPAR\b/,
		/TD MARKETI/,
		/SUPERMARKET AS\b/,
		/SAMON PROMET DOO/,
		/ECON ORGANIC SHOP/,
		/CRVENA JABUKA DOO/,
		/HELJIC DOO/,
		/STEFIJANO\b/,
		/MARKETI DD\b/,
		/HOSE KOMERC DOO/,
		/LIDLHRVATSKA/,
		/TOMMY\b/,
		/OKTUM DOO/,
		/AMKO KOMERC DOO/,
		/MUJANIC MESNICA/,
		/TARGET/,
		/TISAK/
	],
	'Djecije stvari' => [
		/KENN ART/,
		/BOJPROM\b/,
		/DOTEA D\.O\.O\./,
		/HERR UND FRAU KLEIN/,
		/CICIBAN\b/,
		/KENN ART DOO/,
		/BIMACO DOO/,
		/ZOE DRUSTVO/,
		/KAVAT D\.O\.O\./,
		/REM PRODUCT/,
		/KEPROM D\.O\.O\. AKSA/,
		/DEXY CO KIDS DOO/,
		/EUROM DENIS/,
		/SOLIDEX DOO/
	],
	'Edukacija' => [
		/BUY BOOK DOO SARAJEVO/,
		/SVJETLOSTKOMERC\b/,
		/SLADABONI DOO/,
		/BOOKS\.BA DOO/,
		/KNJIGA\.BA/,
		/MLADINSKA KNJIGA/,
		/SARAJEVO\-PUBLISHING/,
		/Audible\b/,
		/KNJIZARA\b/,
		/SKOLARINA/,
		/KANTINA/,
		/UPISNINA/,
		/BOOKDEPOSITORY.COM/,
		/PBZ6MUZEJILUZIJA/
	],
	'Automobil' => [
		/MAKBEL GUMA/,
		/BLOCK DOO/,
		/AUTOSERVIS DEDOVIC/,
		/HYUNDAI-AUTO BH/,
		/GUMA M SARAJEVO/,
		/Trajni nalog br\. 46756/
	],
	'Prevoz' => [
		/ENERGOPETROL\b/,
		/B.STANICA BIHAC/,
		/CAT Ticket Wien Schwecha/,
		/OEBB Ticket/,
		/EL TARIK OIL/,
		/UBER\b/,
		/CAT Ticket/,
		/AUTOCESTE\b/,
		/HIFA-BENZ DOO/,
		/AUTOCESTA\b/,
		/KRAJINA PETROL/,
		/GVB VOERTUIG/,
		/WIENER LINIEN/,
		/BRKIC PETROL/,
		/BENZINSKA\b/,
		/HIFA-OIL/,
		/HOLD INA BS/,
		/GAGI TRANS DOO/,
		/PETROL BH/,
		/BP-TSANTERIDIS/,
		/CAR HIRE FROM CARFLEXI/,
		/O\.A\.s\.A AT/,
		/BIHAC BIHAC/,
		/OTES ILIDZA/
	],
	'Putovanja' => [
		/NIEUW SLOTANIA HOTEL/,
		/Johann Strauss Wien/,
		/NIEUW SLOTANIA HOTEL/,
		/CONNEXXION HILVERSUM/,
		/AUSTRIAN\b/,
		/HOTEL NEUM RECEPCIJA/,
		/MOXY WIEN AIRPORT/,
		/IBIS Wien/,
		/SUN GARDENS/,
		/CP Convenience Partner/,
		/AERODROM/,
		/AIRBNB/,
		/Hotel on Booking/,
		/B\.com/,
		/BARCELO\.COM/,
		/AEGEAN_WEB/,
		/HYDRA BEACH/,
		/CSC\*US EMBASSY/
	],
	'Odjeca' => [
		/ZARA SARAJEVO/,
		/SPORT\-GMS DOO/,
		/INTERSPORT\b/,
		/ATMA D\.O\.O\./,
		/MASSIMO DUTTI/,
		/MEBA DOO/,
		/MERCERI DOO/,
		/TOM TAILOR/,
		/RETRO SHOES/,
		/DIGITALIS\b/,
		/AZEL DOO/,
		/Duty Free Heinemann/,
		/Ernsting\'s family/,
		/BENETTON\b/,
		/TEMA RETAIL/,
		/TIFFANY DOO/,
		/GREEN STONE/,
		/DIRK VAN DEN BROEK/,
		/MONTECRISTO MODIANA/,
		/ALPINA BH/,
		/TR\-BUTIK MATRIX/,
		/CORTIX DOO/,
		/FAMA DOO/,
		/ASTRA SARAJEVO/,
		/SMC DOO OFFICE SHOES/,
		/AGORA\-A DOO/,
		/SPORT VISION/,
		/DECHATLON\b/,
		/DEICHMANN/,
		/C-A MODA/,
		/PBZ7HMDOO/,
		/H \& M HENNES \& MAURITZ/,
		/PLANIKA FLEX/,
		/ALMA RAS/,
		/CORTIX/,
		/AB\-LINE ORSAY/,
		/CM\-COSMETIC/,
		/KOTON TEXTIL/,
		/GAP US/,
		/MARSHALLS/
	],
	'Luksuz' => [
		/DERMATOVEN CENTAR FARA/,
		/CINEMA CITY/,
		/PAYPAL\b/,
		/MAAB WELLNESS/,
		/MAAB SPA CENTAR/,
		/NETFLIX\.COM/,
		/HERBAL SPA/,
		/PP\*\d/,
		/ALIEXPRESS\.COM/,
		/ALIEXPRESS/,
		/ZLATARNA CELJE DOO/,
		/Samsonite/,
		/ZZR SOFIC/,
		/NINTENDO/,
		/GAMESTOP/,
		/STYLOS D\.O\.O\./,
		/DELTA AIR   Seat Fees/,
		/IN \*GAMERS WORLD/,
		/AMZN MKTP/i,
		/BEST BUY/,
		/Shop 2204\/ P\&C L2 Schipho/,
		/Shop 4721\/ Centraal L2 Sc/
	],
	'Jelo vani' => [
		/BERMUDA BRAEU WIEN/,
		/Motto am Fluss Wien/,
		/BLIND TIGER/,
		/FRANZ&SOPHIE DOO/,
		/RESTORAN VAPIANO/,
		/DEMEL\/HENRY WIEN/,
		/RESTORAN KIBE/,
		/TELOPTIC DOO/,
		/BAJRA\b/,
		/DRUGA KUCA/,
		/L\'Osteria\b/,
		/Das Columbus Wien/,
		/Novotel Wien/,
		/AMREST ADRIA/,
		/CAFFE SUSHI BAR KIMONO/,
		/RESTORAN RADON PLAZA/,
		/Cheese factory/,
		/RESTORAN TITOVA 4/,
		/NORDSEE GES/,
		/AKAKIKO\b/,
		/MCDONALD\'S/,
		/POKRET ZA PREOKRET DOO/,
		/McDonalds/,
		/Kantine 4\.0 Wien/,
		/KULINARIAT WIEN\-FLUGHAFE/,
		/MY BOOK/,
		/LIDL\b/,
		/METROPOLIS\b/,
		/KFC\b/,
		/CAMPUS BRAEU WIEN/,
		/STARBUCKS/,
		/KAFENIO/,
		/GRAY FOX COFFEE/,
		/SELECT CO CAFE/,
		/SP TOPLIK/,
		/PBZ7APETIT/,
		/RESTORAN WOK/,
		/Ginger Sushi/,
		/SUNCE DOO BUSOVACA/,
		/PINO NATURE/,
		/RESTORAN VIDIKOVAC/,
		/HMSHOST/,
		/SSP NEDERLAND B.V./
	],
	'Opremanje kuce' => [
		/OBI\b/,
		/TR EKO TRADE KRIVAJA/,
		/PENNY PLUS/,
		/DOMOD\b/,
		/B\&K DOO/,
		/Bergfuchs\b/,
		/BERGFUCHS\b/,
		/JYSK D\.O\.O\./,
		/SATURN\b/,
		/Saturn\b/,
		/KAM-CONNECTING STR/,
		/IMTEC DOO/,
		/EGLO RASVJETA/,
		/GRADIZ D\.O\.O\./,
		/VITAPUR DOO/,
		/IKEA/,
		/ARCHITEKTENGRUPPE S71/,
		/ELPI COMERC/,
		/LAMPER/,
		/ADAZAL/,
		/FARB\-EX/,
		/AT KERAMETAL/,
		/R:769-P\/19/ 	#Ans Drive
	],
	'Zdravlje' => [
		/APOTEKE\b/,
		/APOTEKA\b/,
		/EUROFARM\b/,
		/ITALGROUP DOO/,
		/PHARMACIA\b/,
		/BEURER\b/,
		/LJEKARNA\b/,
		/PZU POLIKLINIKA EURO/
	],
	'Komunalije' => [
		/RACUN\b/,
		/BH TELECOM/,
		/ODVOZ SMECA/,
		/RAC\?UN ZA PRIRODNI GAS/,
		/R:03-309115/,		# Sarajevogas
		/R:40404-0819081/,	# 
		/R:402-0514674/,
		/R:RAC\?UN ZA UTROS\?ENU VODU/,
		/R:650470570201909-01.09.2019 - 30.09.2019/
	],
	'Ban. naknade i kamate' => [
		/NAKNADA ZA PODIZANJE GOTOVINE/,
		/Provizija za nalog \d+/,
		/Automatska naplata-stanovni/,
		/Naknada Paket Premium/,
		/VISA electron-obr/,
		/Kamata-Tekući račun/,
		/NAKNADA ZA KORISTENJE SEFA/,
		/Naknada za obnavu limita FL/
	],
	'Porezi i kazne' => [
		/POREZ NA PROMET NEPOKRETNOSTI/,
		/UPLATA NOVCANE KAZNE/
	],
	'Osiguranje' => [
		/BROJ PONUDE N1183-566665/
	],
	'Kredit' => [
		/Trajni nalog br. 63216/ # Rata kredita
	],
	'Izdrzavanje i pomoc' => [
		/ZA RODITELJE/
	],
	'Donacije' => [
		/R:09001623480-JEDNOKRATNA POMOC/,
		/STIPENDIJA/,
		/UPLATA DONACIJE/,
		/UPLATA ZA SUFARE/
	],
	'Transfer' => [
		/PRENOS SREDSTAVA/,
		/ELBA\b/,
		/^UPLATA$/
	],
	'Pozajmice' => [
		/UPLATA POZAJMICE/,
		/POVRAT POZAJMNICE/
	],
	'Nepoznato' => [
		/Dnevne transakcije po tek\.rn/,
		/DOBRINJA D.D. SARAJEVO/,
		/MIL EXPORT DOO N TRAVN NO/
	]
}

RULES_PRIHODI = {
	'Plata' => [
		/Plata\b/,
		/PLATA\b/,
		/TOPLI OBROK I PREVOZ/
	],
	'Dnevnice za poslovni put' => [
		/SLUZBENI PUT/,
		/PUTNA AKONTACIJA/,
		/DNEVNICE SL\.PUT/
	],
	'Transfer' => [
		/ELBA\b/,
		/NA SBERBANK RACUN/,
		/PRENOS SREDSTAVA/,
		/^UPLATA$/
	],
	'Pozajmice' => [
		/POVRAT POZAJMNICE/,
		/VRACANJE POZAJMICE/,
		/POVRAT POZAJMICE/
	],
	'Isplata dobiti' => [
		/DOBITI\b/	
	],
	'Kredit' => [
		/Pustanja kredita/
	]
}

def parse_rules(rules, rashod, date, opis, amount) 
	rules.each do |rule_pair|
		rule_pair[1].each do |rule_regex|
			if opis.match(rule_regex)
				return rule_pair[0]
			end
		end
	end
	return nil
end


UNKNOWNS = []
matches = 0
no_matches = 0

parsed_file = CSV.read("export-all.txt", { :col_sep => "\t" , encoding: "ISO8859-1"})

CSV.open("output.txt", "w", { :col_sep => "\t" ,  encoding: "ISO8859-1"}) do |csv|

	parsed_file.each do |row|
		rashod = row[0]
		date = row[1]
		opis = row[9]
		amount = row[11]

		if rashod == '+'
			category = parse_rules(RULES_PRIHODI, rashod, date, opis, amount)
		else
			category = parse_rules(RULES_RASHODI, rashod, date, opis, amount)
		end

		if category.nil? 
			category = ''
			UNKNOWNS << opis
			no_matches += 1
		else
			matches+=1 
		end

		arr = row.to_a
		arr << category
		csv << arr
	end


end

puts "#{matches} / #{matches+no_matches}"
puts UNKNOWNS
