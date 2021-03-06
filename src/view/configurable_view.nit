module configurable_view

import app::ui
import app::data_store
import android::aware
import nitGains_data


class ConfigurableButton
	super Button

	var data : ParameterData is public writable

	init
	do
		self.text = data.value

	end

	fun refresh(new_data : ParameterData) 
	do
		data = new_data
		self.text = data.value
	end
end

class ConfigurablePlayer
	super ConfigurableButton

	#false -> on pause 
	#true -> on play
	var state = false

	fun on_break
	do

		state = false
		self.text = "->"

	end

	fun on_play
	do

		state = true
		self.text = "||"

	end


end


class ConfigurableSave
	super ConfigurableButton

end

class ConfigurableLabel
	super Label

	var data : ParameterData is public writable

	init
	do
		self.text = data.value
	end

	fun refresh(new_data : ParameterData) 
	do
		data = new_data
		self.text = data.value
	end

end

class Clock

	 super ConfigurableLabel

end