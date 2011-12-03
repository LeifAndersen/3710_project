import bpy

def save(filepath):
    
    file = open(filepath, "w")
    
    # Assume we're exporting the first mesh
    mesh = bpy.data.meshes[0]

    file.write(str(2*len(mesh.faces)) + '\n')
    
    for i in range(len(mesh.faces)):
        face = mesh.faces[i]
        file.write('0 #color\n')
        firstVert = face.vertices[0]
        thirdVert = face.vertices[2]
        for j in range(len(face.vertices)):
            if j == 4:
                file.write('color\n')
                vert = firstVert
                file.write(str(int(mesh.vertices[vert].co[0])) + ' #- \n')
                file.write(str(int(mesh.vertices[vert].co[1])) + '\n')
                file.write(str(int(mesh.vertices[vert].co[2])) + '\n')
                vert = thirdVert
                file.write(str(int(mesh.vertices[vert].co[0])) + ' #- \n')
                file.write(str(int(mesh.vertices[vert].co[1])) + '\n')
                file.write(str(int(mesh.vertices[vert].co[2])) + '\n')
            vert = face.vertices[j]
            file.write(str(int(mesh.vertices[vert].co[0])) + ' #- \n')
            file.write(str(int(mesh.vertices[vert].co[1])) + '\n')
            file.write(str(int(mesh.vertices[vert].co[2])) + '\n')
            
	# Save and quit
    file.flush()
    file.close()
    return {'FINISHED'}

def main():
	save("mesh.txt")
	
if __name__ == '__main__':
	main()
