@tool
extends Node3D


func _ready() -> void:
	for node in get_children():
		if node is MeshInstance3D:
			for index in node.mesh.get_surface_count():
				var material: BaseMaterial3D = node.mesh.surface_get_material(index)
				material.texture_filter = BaseMaterial3D.TEXTURE_FILTER_LINEAR_WITH_MIPMAPS_ANISOTROPIC
