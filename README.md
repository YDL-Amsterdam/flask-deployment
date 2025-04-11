# flask-deployment

## Quick Start

1. Clone this template:
```bash
git clone <your-repo-url>
cd flask-deployment
```

2. Build the Docker image:
```bash
docker build -t flask-app .
```

3. Run the container:
```bash
docker run -p 80:5000 flask-app
```

4. Test the application:
- Open your browser and visit `http://localhost:5000`
- Or use curl: `curl http://localhost:5000`

You should see:
```json
{
    "message": "Hello, World!"
}
```

## Customizing the Template

### Flask Application (`app/main.py`)
- Add your routes and application logic
- The current code provides a simple JSON response
- Modify the port or host in `app.run()` if needed

### Dependencies (`app/requirements.txt`)
- Add any additional Python packages your application needs
- Current dependencies:
  - Flask==3.0.0

### Docker Configuration
- The `Dockerfile` uses Python 3.11-slim for a minimal image
- Exposes port 5000
- Runs the Flask development server

## Development Notes

1. This template uses Flask's built-in development server
2. Not recommended for production use
3. Perfect for:
   - Development
   - Testing
   - Learning Docker
   - Simple applications

## Common Issues

1. Can't access the application?
   - Make sure you included the `-p 80:5000` flag when running
   - Check if the container is running with `docker ps`
   - View logs with `docker logs <container_id>`

