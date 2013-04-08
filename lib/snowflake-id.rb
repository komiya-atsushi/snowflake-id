require 'snowflake-id/version'

#
# Provides Twitter's snowflake-encoded status ID to Time conversion
#
class SnowflakeId
  SNOWFLAKE_EPOCH_MILLIS = 1288834974657

  #
  # Generates Snowflake object from Twitter's status ID.
  #
  def initialize(id)
    @id = id.to_i
  end

  #
  # Returns snowflake-encoded ID.
  #
  def id
    return @id
  end

  #
  # Returns string representation of ID
  #
  def to_s
    return @id.to_s
  end

  #
  # Returns Time object which is included in snowflake-encoded ID.
  #
  def to_time
    t = ((@id >> 22) + SNOWFLAKE_EPOCH_MILLIS) / 1000.0
    return Time.at(t)
  end

  def ==(other)
    return @id == other.id
  end

  #
  # Converts Time object into Snowflake object.
  #
  def self.to_snowflake(time)
    millis = (time.to_f * 1000).to_i

    if millis < SNOWFLAKE_EPOCH_MILLIS
      raise "#{time} is before Snowflake epoch"
    end
    
    return SnowflakeId.new((millis - SNOWFLAKE_EPOCH_MILLIS) << 22)
  end
end

#
# Extends Time class.
#
class Time
  #
  # Converts Time object into Snowflake object.
  #
  def to_snowflake
    return SnowflakeId.to_snowflake(self)
  end
end
