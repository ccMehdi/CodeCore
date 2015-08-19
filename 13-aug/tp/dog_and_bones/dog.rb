class Dog

  #define the constance
  MAX_BONE_ALLOW = 3

  def initialize(type, color)
    @type, @color = type, color
    @bones        = []
  end

  def give(bone)
    if @bones.count >= 3
      puts "I have too many bones."
    else
      @bones << bone
    end
  end

  def eat
    if @bones.count == 0
      puts "I have no bones"
    else
      bone = @bones.pop
      puts "yummy! I ate #{bone.size} bone"
    end


end
