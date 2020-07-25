module ActivityLogsHelper
  def getStatus(el)
    return el['stop_time'].blank? ? "En progreso" : "Terminada"
  end

  def getDuration(el)
    if el['duration'].present?
      hours = el['duration'].to_i
      minutes = ((el['duration'].modulo(1) * 100) * 60 / 100).to_i
      return "#{hours} horas #{minutes} minutos"
    else
      return '*'
    end
  end
end
