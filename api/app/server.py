from fastapi import FastAPI
from .user.router import router as user_router

app = FastAPI()

app.include_router(user_router)

@app.get("/")
def index() -> None:
    return "Hello, world!"
