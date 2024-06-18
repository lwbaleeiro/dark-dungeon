class_name Knight extends CharacterBody2D

# Base Stats
var hp: int = 200
var defense: int = 20
var melee_attack: int = 30
var movement_speed: float = 80.0
var attack_range: float = 1.5
var mana: int = 0
var hp_regeneration: float = 2.0
var magic_resistance: int = 5

func _ready():
	# Inicialização do personagem
	set_physics_process(true)

func _physics_process(delta):
	# Lógica de movimento e outras mecânicas do personagem
	pass

func take_damage(amount: int):
	# Calcula o dano recebido após considerar a defesa
	var damage_taken = amount - defense
	hp -= max(damage_taken, 0)
	if hp <= 0:
		die()

func regenerate_hp(delta):
	# Regenera HP ao longo do tempo
	hp += hp_regeneration * delta
	hp = min(hp, 200) # Limita o HP ao máximo

func animation():
	pass

func die():
	# Lógica para quando o personagem morre
	queue_free()
