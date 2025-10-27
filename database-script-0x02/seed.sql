# Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('uuid-001', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw_1', '1234567890', 'guest', CURRENT_TIMESTAMP),
('uuid-002', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw_2', '0987654321', 'host', CURRENT_TIMESTAMP),
('uuid-003', 'Carol', 'Lee', 'carol@example.com', 'hashed_pw_3', NULL, 'admin', CURRENT_TIMESTAMP);
#Properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('prop-001', 'uuid-002', 'Cozy Cottage', 'A peaceful cottage in the countryside.', 'Napa Valley, CA', 120.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('prop-002', 'uuid-002', 'Modern Loft', 'A stylish loft in downtown.', 'New York, NY', 200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
#Booking 
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('book-001', 'prop-001', 'uuid-001', '2025-11-01', '2025-11-05', 480.00, 'confirmed', CURRENT_TIMESTAMP),
('book-002', 'prop-002', 'uuid-001', '2025-12-15', '2025-12-18', 600.00, 'pending', CURRENT_TIMESTAMP);
#Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('pay-001', 'book-001', 480.00, CURRENT_TIMESTAMP, 'credit_card'),
('pay-002', 'book-002', 600.00, CURRENT_TIMESTAMP, 'paypal');
#Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at) VALUES
('rev-001', 'prop-001', 'uuid-001', 5, 'Absolutely loved the stay! Peaceful and clean.', CURRENT_TIMESTAMP),
('rev-002', 'prop-002', 'uuid-001', 4, 'Great location, but a bit noisy at night.', CURRENT_TIMESTAMP);
#Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('msg-001', 'uuid-001', 'uuid-002', 'Hi Bob, is the cottage available for early check-in?', CURRENT_TIMESTAMP),
('msg-002', 'uuid-002', 'uuid-001', 'Hi Alice, yes, you can check in by 1 PM.', CURRENT_TIMESTAMP);



