require "csv"

RULES_RASHODI = {
	'Gotovina' => [
		/^Isplata got. ATM./		
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
		/OKTUM DOO/
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
		/REM PRODUCT/
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
		/KNJIZARA\b/
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
		/BENZINSKA\b/
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
		/AERODROM/
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
		/DECHATLON\b/
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
		/ZLATARNA CELJE DOO/,
		/Samsonite/
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
		/CAMPUS BRAEU WIEN/
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
		/VITAPUR DOO/
	],
	'Zdravlje' => [
		/APOTEKE\b/,
		/APOTEKA\b/,
		/EUROFARM\b/,
		/ITALGROUP DOO/,
		/PHARMACIA\b/,
		/BEURER\b/,
		/LJEKARNA\b/
	],
	'Komunalije' => [
		/RACUN\b/,
		/BH TELECOM/
	],
	'Ban. naknade i kamate' => [
		/NAKNADA ZA PODIZANJE GOTOVINE/,
		/Dnevne transakcije po tek\.rn/,
		/Provizija za nalog \d+/,
		/Automatska naplata-stanovni/,
		/Provizija za nalog 77640620/,
		/Naknada Paket Premium/,
		/VISA electron-obr/,
		/Kamata-Teku/
	],
	'Izdrzavanje i pomoc' => [
		/ZA RODITELJE/
	],
	'Donacije' => [
		/R:09001623480-JEDNOKRATNA POMOC/
	],
	'Transfer' => [
		/ELBA\b/
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
		/PUTNA AKONTACIJA/
	],
	'Transfer' => [
		/ELBA\b/,
		/NA SBERBANK RACUN/
	],
	'Isplata dobiti' => [
		/DOBITI\b/	
	],
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

parsed_file = CSV.read("export-all.txt", { :col_sep => "\t" , quote_char: nil,  encoding: "ISO8859-1"})

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
