CREATE DATABASE IF NOT EXISTS robotica_steam;
USE robotica_steam;

-- Tabela única consolidada com todos os dados, sensores e registros de uso
CREATE TABLE empilhadeira (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_empilhadeira VARCHAR(30) NOT NULL,
    nome_equipamento VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) DEFAULT 'Projeto Educativo',
    
    -- Hardware e Sensores
    microcontrolador VARCHAR(50) NOT NULL,
    comunicacao VARCHAR(50) NOT NULL,
    motores VARCHAR(50) NOT NULL,
    servo VARCHAR(50) NOT NULL,
    sensor_umidade_temp VARCHAR(50) NOT NULL,
    sensor_aproximacao VARCHAR(50) NOT NULL,
    led_status VARCHAR(50) NOT NULL,
    componentes_kit TEXT NOT NULL,
    areas_steam VARCHAR(100) NOT NULL,
    
    -- Telemetria e Uso
    temperatura_empilhadeira DECIMAL(5,2),
    umidade_ambiente DECIMAL(5,2),
    distancia_aproximacao_cm DECIMAL(6,2),
    dias_usados INT DEFAULT 0,
    tempo_uso_minutos INT DEFAULT 0,
    peso_usado_gramas DECIMAL(8,2) DEFAULT 0.00,
    
    -- Identificação do Operador
    nome_usuario VARCHAR(100) NOT NULL,
    curso_usuario VARCHAR(100) NOT NULL,
    data_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Inserção resumida com todos os dados
INSERT INTO empilhadeira (
    codigo_empilhadeira, nome_equipamento, microcontrolador, comunicacao, motores, servo,
    sensor_umidade_temp, sensor_aproximacao, led_status, componentes_kit, areas_steam,
    temperatura_empilhadeira, umidade_ambiente, distancia_aproximacao_cm,
    dias_usados, tempo_uso_minutos, peso_usado_gramas, nome_usuario, curso_usuario
) VALUES (
    'EMP-STEAM-001',
    'Empilhadeira Robótica STEAM',
    'Arduino Nano V3',
    'Bluetooth HC-05/06',
    '2 Motores DC 6V',
    'Servo MG90D 360°',
    'DHT11 (Umidade/Temp)',
    'Ultrassônico HC-SR04',
    'Verde - Operando',
    'Chassi acrílico (1), Ponte H L298N (1), Rodas e rodízio (3), LEDs (2), Resistores (3), Jumpers (25), Buzzer (1), DHT11 (1), HC-SR04 (1)',
    'Ciência, Tecnologia, Engenharia, Artes, Matemática',
    32.50, 58.00, 25.00,
    2, 105, 850.00,
    'Lucas Almeida',
    'Técnico em Mecatrônica'
);

SELECT * FROM empilhadeira;
