module HomeHelper
  require 'date'
  def first_day( year, month )
    date = Date.new( year, month, 1 )
    date - ( date.wday - 1 )
    return date
  end
  def second_day( year, month )
    date = Date.new( year, month, 2 )
    date - ( date.wday - 2 )
    return date
  end
  def third_day( year, month )
    date = Date.new( year, month, 3 )
    date - ( date.wday - 3 )
    return date
  end
  #to fetch 10th day of the month
  def n_day(year,month)
    year = Date.new.year
    month = Date.new.month
    date = Date.new( year, month, 10 )
    date - ( date.wday - 10 )
    return date
  end


  # 1st of the month - three days 1,2,3
  # if first was a Saturday, 1,2,3,4,5 (The only time for 5th is a Wednesday)
  # if first was a Sunday 1,2,3,4 (The only 4th is a Tueday, Wednesday


  def is_alert_day (today = Date.new)

    sun = 0
    mon = 1
    tue = 2
    wed = 3
    thu = 4
    fri = 5
    sat = 6


    if today.day > 5
      puts "day is > 5"

      return false
    end


    if today.day == 5
      if today.wday != wed
        puts "day is 5 and not a wed"

        return false
      end
    end


    if today.day == 4
      puts "day is 4"
      if today.wday != wed and today.wday != tue
        puts "and not a wed or Tue"
      end
    end

    return true
  end

  def is_alert1_day (today = Date.new)

    sun = 0
    mon = 1
    tue = 2
    wed = 3
    thu = 4
    fri = 5
    sat = 6


    if today.day > 13
      puts "day is > 13"

      return false
    end


    if today.day == 14
      if today.wday != wed
        puts "day is 14 and not a wed"

        return false
      end
    end


    if today.day == 15
      puts "day is 15"
      if today.wday != wed and today.wday != tue
        puts "and not a wed or Tue"
      end
    end

    return true
  end

  def estTimeZone()
    est = ActiveSupport::TimeZone["Eastern Time (US & Canada)"]
    est1 = est.at(Time.now).strftime("%T %Z")
    return est1
  end
  def estDateTime()
    est = ActiveSupport::TimeZone["Eastern Time (US & Canada)"]
    est2 = est.at(Time.now).strftime('%A, %B %C, %G')
    return est2
  end

  def pstTimeZone()
    pst = ActiveSupport::TimeZone["Pacific Time (US & Canada)"]
    pst1 = pst.at(Time.now).strftime("%T %Z")
    return pst1
  end
  def pstDateTime()
    pst = ActiveSupport::TimeZone["Pacific Time (US & Canada)"]
    pst2 = pst.at(Time.now).strftime('%A, %B %C, %G')
    return pst2
  end

  def brtTimeZone()
    brt = ActiveSupport::TimeZone["Brasilia"]
    brt1 = brt.at(Time.now).strftime("%T %Z")
    return brt1
  end
  def brtDateTime()
    brt = ActiveSupport::TimeZone["Brasilia"]
    brt2 = brt.at(Time.now).strftime('%A, %B %C, %G')
    return brt2
  end

end
