# Globals

FILENAME = "image.ppm" #name of output file
FILERES = 512 #resolution in pixels of output file

$file = nil

# Creates a file & header
def create_file()
  $file = File.open(FILENAME, 'w')
  $file.puts "P3 #{FILERES} #{FILERES} 255"
end

def write_pixel(r, g, b)
  r, g, b = r%256, g%256, b%256 #prevent illegal nums
  $file.puts "#{r} #{g} #{b}\t"
end

## Main
create_file()

chooser = Integer(rand() * 5) #different picture every compile

x = 0
while x < FILERES
  y = 0
  while y < FILERES
    i, j = y/2, x/2

    case chooser
    when 0
      write_pixel(i, j, j+i) # 4 boxes, diag lines
    when 1
      write_pixel(i%(j+1), j%(i+1), j+i) # 3d cube jumping out
    when 2
      write_pixel(j+1, j*i, j**i) # strange curve
    when 3
      write_pixel(j, i**j, i) # cascading boxes
    when 4
      write_pixel(Integer( rand() * i ), Integer( rand() * j ), Integer( rand() * i+j )) # static gradient
    end

    y+=1
  end
  x+=1
end

$file.close()
