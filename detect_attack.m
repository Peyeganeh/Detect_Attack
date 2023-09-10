function isAttack = detect_attack(packet, data)
    attack_rows = data(data.TransmissionRate == packet(2), :); % This is a basic example
    isAttack = any(attack_rows.Type == 'black_hole' | attack_rows.Type == 'gray_hole');
end
